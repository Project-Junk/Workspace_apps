.class public Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;
.super Lcom/android/settings/TrustedCredentialsSettings;
.source "ColorTrustedCredentialsSettings.java"

# interfaces
.implements Lcom/coloros/settings/feature/security/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;,
        Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;,
        Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;,
        Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;,
        Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;
    }
.end annotation


# instance fields
.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcolor/support/design/widget/ColorTabLayout;

.field private k:Lcom/android/settings/widget/viewpager/RtlViewPager;

.field private l:Lcom/coloros/settings/feature/security/a$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->a:Landroid/os/UserManager;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method private a(Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/view/View;)V
    .locals 9

    .line 120
    new-instance v0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$f;)V

    .line 121
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->getGroupCount()I

    move-result v1

    .line 124
    iget p1, p1, Lcom/android/settings/TrustedCredentialsSettings$f;->d:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 126
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    .line 127
    :goto_0
    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->getGroupCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 128
    invoke-virtual {v0, v3}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->a(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    .line 129
    invoke-virtual {v0, v3}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->b(I)Lcom/android/settings/TrustedCredentialsSettings$d;

    move-result-object v5

    const v6, 0x7f0d00fd

    .line 132
    invoke-virtual {p2, v6, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 133
    invoke-virtual {v5, v6}, Lcom/android/settings/TrustedCredentialsSettings$d;->a(Landroid/widget/LinearLayout;)V

    const/4 v7, 0x1

    if-le v1, v7, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v2

    .line 135
    :goto_1
    invoke-virtual {v5, v8}, Lcom/android/settings/TrustedCredentialsSettings$d;->a(Z)V

    .line 136
    invoke-virtual {v5, v4}, Lcom/android/settings/TrustedCredentialsSettings$d;->b(Z)V

    const/4 v8, 0x2

    if-gt v1, v8, :cond_1

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    .line 137
    :goto_2
    invoke-virtual {v5, v7}, Lcom/android/settings/TrustedCredentialsSettings$d;->c(Z)V

    if-eqz v4, :cond_3

    .line 139
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 141
    :cond_3
    invoke-virtual {p1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Ljava/util/Set;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->f:Ljava/util/Set;

    return-object p0
.end method

.method public static c(Lcom/android/settings/TrustedCredentialsSettings$c;)Z
    .locals 1

    .line 115
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$f;->a:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-virtual {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$f;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->h:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic lambda$keB_chvU4Syj00qyPrhwcsH0krU(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/TrustedCredentialsSettings$f;Lcom/android/settings/TrustedCredentialsSettings$e;)Lcom/android/settings/TrustedCredentialsSettings$a;
    .locals 2

    .line 148
    new-instance v0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$f;Lcom/android/settings/TrustedCredentialsSettings$e;B)V

    return-object v0
.end method

.method public final a(ILcom/coloros/settings/feature/security/a$c;)Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->d:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    iput-object p2, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->l:Lcom/coloros/settings/feature/security/a$c;

    :cond_1
    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 190
    iget p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->e:I

    .line 191
    iget-object p3, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->l:Lcom/coloros/settings/feature/security/a$c;

    const/16 v0, -0x2710

    .line 194
    iput v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->e:I

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->l:Lcom/coloros/settings/feature/security/a$c;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 197
    iget-object p2, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->d:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 199
    invoke-interface {p3, p1}, Lcom/coloros/settings/feature/security/a$c;->a(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->l:Lcom/coloros/settings/feature/security/a$c;

    .line 68
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1205c0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "20120"

    const-string v2, "event_click_trusted_certificate"

    .line 1447
    invoke-static {v0, v1, v2, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0d00fe

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    .line 76
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$f;->a:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget-object p2, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/view/View;)V

    .line 78
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$f;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget-object p2, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    iget-object p2, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    const p3, 0x7f0a070a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    .line 84
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1205c0

    .line 89
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    if-eqz p2, :cond_1

    .line 91
    new-instance p1, Lcom/coloros/settings/feature/security/-$$Lambda$ColorTrustedCredentialsSettings$keB_chvU4Syj00qyPrhwcsH0krU;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/security/-$$Lambda$ColorTrustedCredentialsSettings$keB_chvU4Syj00qyPrhwcsH0krU;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)V

    invoke-virtual {p2, p1}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    const p2, 0x7f0a03c9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070582

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070729

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 97
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    const p2, 0x7f0a04a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/viewpager/RtlViewPager;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->k:Lcom/android/settings/widget/viewpager/RtlViewPager;

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    const p2, 0x7f0a06c8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->g:Landroid/view/View;

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    const p2, 0x7f0a0779

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->h:Landroid/view/View;

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->k:Lcom/android/settings/widget/viewpager/RtlViewPager;

    new-instance p2, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/viewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    const p2, 0x7f0a06cc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/design/widget/ColorTabLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->j:Lcolor/support/design/widget/ColorTabLayout;

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->j:Lcolor/support/design/widget/ColorTabLayout;

    iget-object p2, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->k:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-virtual {p1, p2}, Lcolor/support/design/widget/ColorTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->k:Lcom/android/settings/widget/viewpager/RtlViewPager;

    new-instance p2, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/viewpager/RtlViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->k:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/viewpager/RtlViewPager;->setCurrentItem(I)V

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->i:Landroid/view/View;

    return-object p1
.end method
