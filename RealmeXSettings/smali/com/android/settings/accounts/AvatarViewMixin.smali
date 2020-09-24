.class public Lcom/android/settings/accounts/AvatarViewMixin;
.super Ljava/lang/Object;
.source "AvatarViewMixin.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final a:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/app/ActivityManager;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.action.SETTINGS_ACCOUNT_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accounts/AvatarViewMixin;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->b:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->b:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->e:Landroid/app/ActivityManager;

    .line 76
    iput-object p2, p0, Lcom/android/settings/accounts/AvatarViewMixin;->c:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$YC22iFmiLpkYGPtCEeLllC3-JCk;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$YC22iFmiLpkYGPtCEeLllC3-JCk;-><init>(Lcom/android/settings/accounts/AvatarViewMixin;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->d:Landroidx/lifecycle/MutableLiveData;

    .line 113
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$27TxGtBUFe7FmHSRoNwcovxnM94;

    invoke-direct {v1, p2}, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$27TxGtBUFe7FmHSRoNwcovxnM94;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static synthetic a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic a(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;)V
    .locals 7

    const-string p2, "AvatarViewMixin"

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    iget-object v1, p0, Lcom/android/settings/accounts/AvatarViewMixin;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/settings/accounts/AvatarViewMixin;->f:Ljava/lang/String;

    const-string v2, "extra.accountName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AvatarViewMixin;->b:Landroid/content/Context;

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Cannot find any matching action VIEW_ACCOUNT intent."

    .line 96
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_1
    iget-object p2, p0, Lcom/android/settings/accounts/AvatarViewMixin;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 101
    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x66b

    const/16 v4, 0x5de

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    .line 102
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 109
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error parsing avatar mixin intent, skipping"

    .line 84
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$27TxGtBUFe7FmHSRoNwcovxnM94(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accounts/AvatarViewMixin;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$YC22iFmiLpkYGPtCEeLllC3-JCk(Lcom/android/settings/accounts/AvatarViewMixin;Landroidx/fragment/app/FragmentActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/AvatarViewMixin;->a(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "AvatarViewMixin"

    if-nez v0, :cond_0

    const-string v0, "Feature disabled by config. Skipping"

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Feature disabled on low ram device. Skipping"

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getAccountFeatureProvider()Lcom/android/settings/accounts/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/accounts/a;->a()[Landroid/accounts/Account;

    .line 131
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->c:Landroid/widget/ImageView;

    const v1, 0x7f08069e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
