.class public Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.super Landroid/app/ListActivity;
.source "RunningAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    }
.end annotation


# instance fields
.field private loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

.field private mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

.field private mHandler:Landroid/os/Handler;

.field private mKillAll:Landroid/widget/Button;

.field private mKillPackageID:I

.field private mKillPackageName:Ljava/lang/String;

.field private mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

.field private mObserver:Lcom/sec/android/app/controlpanel/Observer;

.field private mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

.field private mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnListItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

.field private mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageID:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 184
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 200
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 309
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$6;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

    .line 332
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    .line 489
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    .line 523
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageID:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/MemoryInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->updateKillAllBtn(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    return-object p1
.end method

.method private updateKillAllBtn(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isThereAppCanBeKilled(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 689
    :goto_e
    return-void

    .line 687
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_e
.end method

.method private updateStatus()V
    .registers 7

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/high16 v7, 0x41a0

    const/4 v6, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/CpuInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 81
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, language:Ljava/lang/String;
    const/16 v0, 0x14

    .line 84
    .local v0, SCALED_PIXEL_SIZE:I
    const v4, 0x7f070010

    invoke-virtual {p0, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    const v5, 0x7f05002e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const-string v4, "ko"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 87
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    :cond_54
    const v4, 0x7f070011

    invoke-virtual {p0, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus2:Landroid/widget/TextView;

    .line 89
    const-string v4, "ko"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 90
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    :cond_6c
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus2:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    .line 94
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    .line 99
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 102
    .local v3, lv:Landroid/widget/ListView;
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 103
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 105
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 107
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12
    .parameter "id"
    .parameter "args"

    .prologue
    const v8, 0x1080027

    const v7, 0x104000a

    const/high16 v6, 0x104

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 605
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getSortOrder()I

    move-result v1

    .line 606
    .local v1, sortOrder:I
    packed-switch p1, :pswitch_data_b8

    .line 680
    :goto_13
    :pswitch_13
    return-object v2

    .line 608
    :pswitch_14
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050035

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f04

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$9;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_13

    .line 619
    :pswitch_30
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    const-string v3, "position"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 621
    .local v0, packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040002

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_13

    .line 653
    .end local v0           #packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :pswitch_5c
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050080

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$11;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$11;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_13

    .line 666
    :pswitch_89
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050080

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$12;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$12;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_13

    .line 606
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_30
        :pswitch_5c
        :pswitch_89
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 279
    const/16 v0, 0xb

    const v1, 0x7f050034

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202016f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 284
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 296
    .local v0, menuId:I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_d

    .line 297
    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->showDialog(I)V

    .line 306
    :cond_c
    :goto_c
    return v3

    .line 298
    :cond_d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 299
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->removeDialog(I)V

    .line 148
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 588
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 590
    packed-switch p1, :pswitch_data_1e

    .line 601
    :cond_6
    :goto_6
    return-void

    .line 592
    :pswitch_7
    iget v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 595
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    iget v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageID:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 596
    .local v0, pkgItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillPackageName:Ljava/lang/String;

    goto :goto_6

    .line 590
    nop

    :pswitch_data_1e
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 289
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 290
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 134
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 115
    return-void
.end method
