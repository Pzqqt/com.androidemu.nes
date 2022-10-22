.class public Lcom/androidemu/nes/EmulatorService;
.super Landroid/app/Service;
.source "EmulatorService.java"


# static fields
.field static final ACTION_BACKGROUND:Ljava/lang/String; = "com.androidemu.actions.BACKGROUND"

.field static final ACTION_FOREGROUND:Ljava/lang/String; = "com.androidemu.actions.FOREGROUND"

.field private static final LOG_TAG:Ljava/lang/String; = "EmulatorService"

.field private static final mStartForegroundSignature:[Ljava/lang/Class;

.field private static final mStopForegroundSignature:[Ljava/lang/Class;


# instance fields
.field private mNM:Landroid/app/NotificationManager;

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidemu/nes/EmulatorService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 46
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/androidemu/nes/EmulatorService;->mStopForegroundSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorService;->mSetForeground:Ljava/lang/reflect/Method;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorService;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorService;->mStopForegroundArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method handleCommand(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f060001

    .line 92
    const-string v3, "com.androidemu.actions.FOREGROUND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 97
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const/high16 v3, 0x7f020000

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 101
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 105
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const/high16 v3, 0x7f060000

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 108
    invoke-virtual {p0, v6, v1}, Lcom/androidemu/nes/EmulatorService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 113
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v3, "com.androidemu.actions.BACKGROUND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorService;->stopForegroundCompat(I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 58
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mNM:Landroid/app/NotificationManager;

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "startForeground"

    sget-object v4, Lcom/androidemu/nes/EmulatorService;->mStartForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "stopForeground"

    sget-object v4, Lcom/androidemu/nes/EmulatorService;->mStopForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 68
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setForeground"

    sget-object v4, Lcom/androidemu/nes/EmulatorService;->mStopForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    .local v0, "crap":Ljava/lang/NoSuchMethodException;
    const-string v2, "EmulatorService"

    const-string v3, "OS doesn\'t have Service.startForeground OR Service.setForeground!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorService;->stopForegroundCompat(I)V

    .line 195
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/androidemu/nes/EmulatorService;->handleCommand(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/androidemu/nes/EmulatorService;->handleCommand(Landroid/content/Intent;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method startForegroundCompat(ILandroid/app/Notification;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 123
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStartForegroundArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "EmulatorService"

    const-string v2, "Unable to invoke startForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "EmulatorService"

    const-string v2, "Unable to invoke startForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mSetForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 141
    :catch_2
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "EmulatorService"

    const-string v2, "Unable to invoke setForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "EmulatorService"

    const-string v2, "Unable to invoke setForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method stopForegroundCompat(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "EmulatorService"

    const-string v2, "Unable to invoke stopForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "EmulatorService"

    const-string v2, "Unable to invoke stopForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 176
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mSetForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/androidemu/nes/EmulatorService;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 180
    :catch_2
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "EmulatorService"

    const-string v2, "Unable to invoke setForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "EmulatorService"

    const-string v2, "Unable to invoke setForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
