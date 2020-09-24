.class public Lcom/coloros/settings/feature/process/RunningApplicationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RunningApplicationActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroidx/viewpager/widget/ViewPager;

.field c:Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;

.field d:Lcom/coloros/settings/feature/process/RunningApplications;

.field e:Lcom/coloros/settings/feature/process/RunningApplications;

.field private f:[Ljava/lang/String;

.field private g:Lcolor/support/v7/widget/Toolbar;

.field private h:Lcolor/support/design/widget/ColorTabLayout;

.field private i:Lcom/coloros/settings/feature/process/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->h:Lcolor/support/design/widget/ColorTabLayout;

    .line 49
    iput-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->b:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070582

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070729

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/process/RunningApplicationActivity;)[Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->f:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->i:Lcom/coloros/settings/feature/process/b;

    .line 3038
    iget-object v1, v0, Lcom/coloros/settings/feature/process/b;->c:Landroid/app/ActivityManager;

    iget-object v2, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    iget p1, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->d:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 3039
    iget-object p1, v0, Lcom/coloros/settings/feature/process/b;->b:Lcom/coloros/settings/feature/process/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/process/a;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02ad

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->setContentView(I)V

    const p1, 0x7f0a03b6

    .line 60
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a:Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->f:[Ljava/lang/String;

    const p1, 0x7f0a0178

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0804bb

    .line 63
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 64
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a(Landroid/view/View;)V

    const v0, 0x7f0a070a

    .line 1158
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->g:Lcolor/support/v7/widget/Toolbar;

    .line 1159
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->g:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    .line 1160
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->g:Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f1212a4

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->g:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1162
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v1, Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/process/RunningApplications;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->d:Lcom/coloros/settings/feature/process/RunningApplications;

    .line 71
    new-instance v1, Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/process/RunningApplications;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->e:Lcom/coloros/settings/feature/process/RunningApplications;

    .line 72
    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->d:Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-static {p0}, Landroid/freeze/FreezeManager;->isFreezeSupport(Landroid/content/Context;)Z

    move-result v2

    .line 2062
    iput-boolean v2, v1, Lcom/coloros/settings/feature/process/RunningApplications;->a:Z

    .line 73
    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->d:Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->e:Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/coloros/settings/feature/process/b;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/process/b;-><init>(Lcom/coloros/settings/feature/process/RunningApplicationActivity;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->i:Lcom/coloros/settings/feature/process/b;

    const v1, 0x7f0a06cb

    .line 76
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorTabLayout;

    iput-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->h:Lcolor/support/design/widget/ColorTabLayout;

    const v1, 0x7f0a04a9

    .line 77
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->b:Landroidx/viewpager/widget/ViewPager;

    .line 78
    new-instance v1, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;-><init>(Lcom/coloros/settings/feature/process/RunningApplicationActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->c:Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->c:Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->h:Lcolor/support/design/widget/ColorTabLayout;

    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcolor/support/design/widget/ColorTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 2100
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->h:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout;->setTabMode(I)V

    .line 2101
    iget-object p1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->h:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout;->requestLayout()V

    .line 2102
    iget-object p1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->h:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout;->invalidate()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a059b

    if-eq v0, v1, :cond_0

    .line 122
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 113
    :cond_0
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12129a

    .line 3063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v2

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->finish()V

    return v2
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 134
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 3148
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->b:Landroidx/viewpager/widget/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 3149
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->i:Lcom/coloros/settings/feature/process/b;

    .line 4034
    iget-object v0, v0, Lcom/coloros/settings/feature/process/b;->b:Lcom/coloros/settings/feature/process/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/process/a;->a()V

    return-void
.end method
