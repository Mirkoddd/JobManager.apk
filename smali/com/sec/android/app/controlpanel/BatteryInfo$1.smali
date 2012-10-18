.class Lcom/sec/android/app/controlpanel/BatteryInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/BatteryInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 124
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/sec/android/app/controlpanel/BatteryInfo;->mPlugType:I
    invoke-static {v3, v4}, Lcom/sec/android/app/controlpanel/BatteryInfo;->access$002(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;

    const-string v4, "level"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/sec/android/app/controlpanel/BatteryInfo;->mLevel:I
    invoke-static {v3, v4}, Lcom/sec/android/app/controlpanel/BatteryInfo;->access$102(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I

    .line 128
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;

    const-string v4, "health"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/sec/android/app/controlpanel/BatteryInfo;->mHealth:I
    invoke-static {v3, v4}, Lcom/sec/android/app/controlpanel/BatteryInfo;->access$202(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;

    const-string v4, "status"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/sec/android/app/controlpanel/BatteryInfo;->mStatus:I
    invoke-static {v3, v4}, Lcom/sec/android/app/controlpanel/BatteryInfo;->access$302(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I

    .line 132
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;

    iget-object v3, v3, Lcom/sec/android/app/controlpanel/BatteryInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/Observer;

    .line 133
    .local v2, o:Lcom/sec/android/app/controlpanel/Observer;
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;

    invoke-interface {v2, v3}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_42

    .line 136
    .end local v2           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_54
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/BatteryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/BatteryInfo;

    const-string v4, "voltage"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/sec/android/app/controlpanel/BatteryInfo;->mVoltage:I
    invoke-static {v3, v4}, Lcom/sec/android/app/controlpanel/BatteryInfo;->access$402(Lcom/sec/android/app/controlpanel/BatteryInfo;I)I

    .line 150
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5f
    return-void
.end method
