.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .registers 11
    .parameter "o"

    .prologue
    const/4 v8, 0x3

    .line 491
    instance-of v6, p1, Lcom/sec/android/app/controlpanel/CpuInfo;

    if-eqz v6, :cond_3c

    move-object v2, p1

    .line 492
    check-cast v2, Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 493
    .local v2, c:Lcom/sec/android/app/controlpanel/CpuInfo;
    const/4 v5, 0x0

    .line 494
    .local v5, totalCpuUsage:F
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v1

    .line 495
    .local v1, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    if-eqz v1, :cond_32

    .line 496
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 497
    .local v0, a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/controlpanel/CpuInfo;->getCpuUsage(I)F

    move-result v3

    .line 502
    .local v3, cpuUsage:F
    invoke-virtual {v0, v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCpuUsage(F)V

    .line 503
    add-float/2addr v5, v3

    .line 504
    goto :goto_19

    .line 506
    .end local v0           #a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v3           #cpuUsage:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_32
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 514
    .end local v1           #appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v2           #c:Lcom/sec/android/app/controlpanel/CpuInfo;
    .end local v5           #totalCpuUsage:F
    :cond_3b
    :goto_3b
    return-void

    .line 507
    :cond_3c
    instance-of v6, p1, Lcom/sec/android/app/controlpanel/MemoryInfo;

    if-eqz v6, :cond_54

    .line 508
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 509
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3b

    .line 510
    :cond_54
    instance-of v6, p1, Lcom/sec/android/app/controlpanel/PackageInfo;

    if-eqz v6, :cond_3b

    .line 511
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 512
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3b
.end method
