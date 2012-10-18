.class public Lcom/sec/android/app/controlpanel/activity/SummaryActivity;
.super Landroid/app/Activity;
.source "SummaryActivity.java"


# static fields
.field static final DEBUGGABLE:Z


# instance fields
.field mDBData:Landroid/widget/TextView;

.field mDBDataProg:Landroid/widget/ProgressBar;

.field mData:Landroid/widget/TextView;

.field mDataProg:Landroid/widget/ProgressBar;

.field mExternalSdCard:Landroid/widget/TextView;

.field mExternalSdProg:Landroid/widget/ProgressBar;

.field mInternalSdCard:Landroid/widget/TextView;

.field mInternalSdProg:Landroid/widget/ProgressBar;

.field private mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->DEBUGGABLE:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 146
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 236
    const v3, 0x7f07001b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 237
    .local v1, dbdata_textview:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 240
    .local v0, dbdata_layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    const v3, 0x7f070024

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 244
    .local v2, externalSD_layout:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    const v3, 0x7f070019

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mData:Landroid/widget/TextView;

    .line 257
    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBData:Landroid/widget/TextView;

    .line 258
    const v3, 0x7f070021

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdCard:Landroid/widget/TextView;

    .line 259
    const v3, 0x7f070025

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdCard:Landroid/widget/TextView;

    .line 260
    const v3, 0x7f07001a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDataProg:Landroid/widget/ProgressBar;

    .line 261
    const v3, 0x7f07001e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBDataProg:Landroid/widget/ProgressBar;

    .line 262
    const v3, 0x7f070022

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdProg:Landroid/widget/ProgressBar;

    .line 263
    const v3, 0x7f070026

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdProg:Landroid/widget/ProgressBar;

    .line 265
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->requestWindowFeature(I)Z

    .line 59
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->requestWindowFeature(I)Z

    .line 60
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->init()V

    .line 64
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, startMonitoring:Landroid/widget/Button;
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 67
    .local v1, stopMonitoring:Landroid/widget/Button;
    sget-boolean v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->DEBUGGABLE:Z

    if-eqz v2, :cond_3d

    .line 68
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :goto_3c
    return-void

    .line 101
    :cond_3d
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 135
    .local v0, menuId:I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_15

    .line 136
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterReceiver()V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->registerReceiver()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/BatteryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->refresh()V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    return-void
.end method
