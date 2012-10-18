.class Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V
    .registers 2
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;-><init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 359
    const-string v1, "com.sec.android.app.controlpanel.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    iget-object v2, v1, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_11
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    #getter for: Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->access$300(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    #getter for: Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->access$300(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    monitor-exit v2

    .line 370
    .end local v0           #msg:Landroid/os/Message;
    :cond_2d
    return-void

    .line 368
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2e

    throw v1
.end method
