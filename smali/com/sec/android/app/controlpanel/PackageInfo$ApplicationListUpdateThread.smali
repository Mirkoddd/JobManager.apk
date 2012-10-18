.class public Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;
.super Ljava/lang/Thread;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationListUpdateThread"
.end annotation


# instance fields
.field public mUpdateHandle:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/PackageInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 214
    const-string v0, "ApplicationListUpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->mUpdateHandle:Landroid/os/Handler;

    .line 215
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 220
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 222
    monitor-enter p0

    .line 223
    :try_start_4
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->this$0:Lcom/sec/android/app/controlpanel/PackageInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfo$1;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->mUpdateHandle:Landroid/os/Handler;

    .line 224
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 225
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 226
    return-void

    .line 224
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method updateList()V
    .registers 5

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->mUpdateHandle:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->mUpdateHandle:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->mUpdateHandle:Landroid/os/Handler;

    const v2, 0xc8596

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    :cond_14
    return-void
.end method
