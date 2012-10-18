.class public Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;
.super Landroid/app/TabActivity;
.source "JobManagerActivity.java"


# static fields
.field public static activity:Landroid/app/Activity;

.field private static hsScroll:Landroid/widget/HorizontalScrollView;


# instance fields
.field private display:Landroid/view/Display;

.field private move:I

.field private tabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->move:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)Landroid/widget/TabHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/HorizontalScrollView;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->hsScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private setDescriptionTab(ILandroid/view/View;)V
    .registers 6
    .parameter "tabIndex"
    .parameter "currentTabView"

    .prologue
    .line 185
    const v0, 0x1020006

    .line 186
    .local v0, idImage:I
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 188
    .local v1, img:Landroid/widget/ImageView;
    packed-switch p1, :pswitch_data_62

    .line 212
    :goto_c
    return-void

    .line 190
    :pswitch_d
    const v2, 0x7f050013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_c

    .line 194
    :pswitch_1e
    const v2, 0x7f050014

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_c

    .line 198
    :pswitch_2f
    const v2, 0x7f05004b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    const v2, 0x7f020037

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_c

    .line 202
    :pswitch_40
    const v2, 0x7f050015

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_c

    .line 206
    :pswitch_51
    const v2, 0x7f050029

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_c

    .line 188
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1e
        :pswitch_2f
        :pswitch_40
        :pswitch_51
    .end packed-switch
.end method

.method private switchTabByIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string v2, "monitor_widget_start"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 216
    .local v1, fromWidget:Z
    const-string v2, "recent_app_dialog_start"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 217
    .local v0, fromRecentAppDialog:Z
    if-eqz v1, :cond_2f

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    const-string v3, "tab1"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 227
    :goto_18
    sget-object v2, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->hsScroll:Landroid/widget/HorizontalScrollView;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 245
    sget-object v2, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->hsScroll:Landroid/widget/HorizontalScrollView;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void

    .line 219
    :cond_2f
    if-eqz v0, :cond_3b

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    const-string v3, "tab1"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_18

    .line 222
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    const-string v3, "activetabString"

    const-string v4, "tab1"

    invoke-static {p0, v3, v4}, Lcom/sec/android/app/controlpanel/Utils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_18
.end method


# virtual methods
.method public initTabSize()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    .line 144
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->display:Landroid/view/Display;

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 146
    .local v1, orien:I
    if-nez v1, :cond_3f

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    if-ge v0, v5, :cond_5d

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 152
    .end local v0           #i:I
    :cond_3f
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_40
    if-ge v0, v5, :cond_5d

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 156
    :cond_5d
    return-void
.end method

.method public moveToTabHost(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 162
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 180
    :goto_d
    sget-object v0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->hsScroll:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->move:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 182
    :cond_14
    return-void

    .line 170
    :pswitch_15
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->move:I

    goto :goto_d

    .line 174
    :pswitch_26
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->move:I

    goto :goto_d

    .line 165
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_26
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->initTabSize()V

    .line 135
    sget-object v0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->hsScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.controlpanel.service.REMOTE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    sput-object v0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->hsScroll:Landroid/widget/HorizontalScrollView;

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "tab1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "tab2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "tab3"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f05004b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "tab4"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "tab5"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f050029

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 91
    const/4 v0, 0x0

    :goto_d4
    const/4 v1, 0x5

    if-ge v0, v1, :cond_e8

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->setDescriptionTab(ILandroid/view/View;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    .line 96
    :cond_e8
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->initTabSize()V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->switchTabByIntent(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->switchTabByIntent(Landroid/content/Intent;)V

    .line 127
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 119
    const-string v0, "activetabString"

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/controlpanel/Utils;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->writeLocaleConfig(Landroid/content/Context;)V

    .line 121
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 122
    return-void
.end method
