.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

.field final synthetic val$packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    iput-object p2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;->val$packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 625
    packed-switch p2, :pswitch_data_40

    .line 649
    :goto_3
    :pswitch_3
    return-void

    .line 628
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;->val$packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 629
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 636
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;->val$packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 641
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;->val$packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 625
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method
