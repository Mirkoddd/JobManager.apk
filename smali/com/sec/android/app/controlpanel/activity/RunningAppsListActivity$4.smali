.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 215
    .local v0, id:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_9a

    .line 266
    :cond_13
    :goto_13
    return v3

    .line 217
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const/4 v2, -0x1

    #setter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$102(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;I)I

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$202(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setButtonPressed(Z)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 228
    :pswitch_34
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setButtonPressed(Z)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_13

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #setter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageID:I
    invoke-static {v1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$102(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;I)I

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->showDialog(I)V

    goto :goto_13

    :pswitch_68
    move-object v1, p1

    .line 244
    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isPressed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setButtonPressed(Z)V

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$3;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 254
    :pswitch_85
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    #getter for: Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setButtonPressed(Z)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4$4;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_13

    .line 215
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_34
        :pswitch_68
        :pswitch_85
    .end packed-switch
.end method
