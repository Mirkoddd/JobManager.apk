.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;
.super Landroid/os/Handler;
.source "RunningAppsListActivity.java"


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
    .line 332
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 334
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_d2

    .line 485
    :cond_5
    :goto_5
    return-void

    .line 338
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 368
    :pswitch_11
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 384
    :pswitch_1c
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$3;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 408
    :pswitch_27
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$800(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 409
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$800(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->cancel(Z)Z

    .line 410
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 412
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {v4, v5, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V

    #setter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    invoke-static {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$802(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    .line 413
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$800(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    .line 416
    .end local v0           #cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :pswitch_64
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/Utils;->isLocaleChange(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 419
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->reloadAppName()V

    .line 420
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->clearCache()V

    goto/16 :goto_5

    .line 426
    :pswitch_88
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$4;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 467
    :pswitch_94
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 468
    .local v2, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a2

    .line 471
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 478
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :pswitch_c7
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->setRecentTaskIntentInfo()V

    goto/16 :goto_5

    .line 334
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_11
        :pswitch_1c
        :pswitch_27
        :pswitch_64
        :pswitch_88
        :pswitch_94
        :pswitch_c7
    .end packed-switch
.end method
