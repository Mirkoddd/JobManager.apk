.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;
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
    .line 338
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 340
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getPackageIndex(Ljava/lang/String;)I

    move-result v0

    .line 343
    .local v0, curPackageIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_68

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->removeItem(I)V

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;Z)V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->notifyDataSetChanged()V

    .line 349
    :try_start_4b
    const-string v1, "com.android.browser"

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 350
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_60} :catch_7f

    .line 361
    :cond_60
    :goto_60
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$202(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .end local v0           #curPackageIndex:I
    :cond_68
    return-void

    .line 351
    .restart local v0       #curPackageIndex:I
    :cond_69
    :try_start_69
    const-string v1, "com.sec.android.app.videoplayer"

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 352
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V

    goto :goto_60

    .line 358
    :catch_7f
    move-exception v1

    goto :goto_60

    .line 353
    :cond_81
    const-string v1, "com.android.music"

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 354
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V

    goto :goto_60

    .line 355
    :cond_97
    const-string v1, "com.android.settings"

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 356
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryUse(IZ)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_ac} :catch_7f

    goto :goto_60
.end method
