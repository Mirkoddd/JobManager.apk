.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 428
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v1

    .line 429
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 432
    .local v3, removeTarget:Ljava/util/Set;,"Ljava/util/Set<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    if-eqz v1, :cond_92

    .line 433
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 434
    .local v2, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 437
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;Z)V

    .line 438
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 441
    .end local v2           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3e
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 442
    .restart local v2       #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    .line 444
    .end local v2           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_52
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setList(Ljava/util/List;)V

    .line 445
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->notifyDataSetChanged()V

    .line 447
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_6a
    invoke-static {v4, v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V

    .line 448
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V

    .line 449
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V

    .line 450
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7c} :catch_93

    .line 457
    :goto_7c
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v5, v5, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const v6, 0x7f050028

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 461
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_92
    return-void

    .line 451
    .restart local v0       #i$:Ljava/util/Iterator;
    :catch_93
    move-exception v4

    goto :goto_7c
.end method
