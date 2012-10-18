.class Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;
.super Ljava/lang/Object;
.source "SummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->hasStorage(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    const-class v3, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->stopService(Landroid/content/Intent;)Z

    .line 97
    :goto_15
    return-void

    .line 92
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    const v1, 0x7f05003e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15
.end method
