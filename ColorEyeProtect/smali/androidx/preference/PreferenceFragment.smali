.class public abstract Landroidx/preference/PreferenceFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroidx/preference/DialogPreference$a;
.implements Landroidx/preference/j$a;
.implements Landroidx/preference/j$b;
.implements Landroidx/preference/j$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragment$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Landroidx/preference/PreferenceFragment$a;

.field private c:Landroidx/preference/j;

.field private d:Z

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Ljava/lang/Runnable;

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroidx/preference/PreferenceFragment$a;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$a;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/PreferenceFragment$a;

    sget v0, Landroidx/preference/m$e;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/PreferenceFragment;->g:I

    new-instance v0, Landroidx/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$1;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->i:Landroid/os/Handler;

    new-instance v0, Landroidx/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$2;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onDetached()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->d()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/preference/PreferenceScreen;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/preference/j;->d()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method protected a(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Landroidx/preference/h;

    invoke-direct {p0, p1}, Landroidx/preference/h;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object p0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p3, p0, Landroidx/preference/PreferenceFragment;->f:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Landroidx/preference/m$d;->recycler_view:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    sget p3, Landroidx/preference/m$e;->preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->f()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    new-instance p0, Landroidx/preference/k;

    invoke-direct {p0, p1}, Landroidx/preference/k;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/m;)V

    return-object p1
.end method

.method public a(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/PreferenceFragment$a;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment$a;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/PreferenceFragment$a;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method b()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->e()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->a(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onAttached()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->c()V

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public final e()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public f()Landroidx/recyclerview/widget/RecyclerView$i;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/m$a;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    sget v0, Landroidx/preference/m$g;->PreferenceThemeOverlay:I

    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/preference/PreferenceFragment;->f:Landroid/content/Context;

    new-instance v0, Landroidx/preference/j;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/preference/j;

    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/preference/j;

    invoke-virtual {v0, p0}, Landroidx/preference/j;->a(Landroidx/preference/j$b;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/preference/PreferenceFragment;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->f:Landroid/content/Context;

    sget-object v1, Landroidx/preference/m$h;->PreferenceFragment:[I

    iget-object v2, p0, Landroidx/preference/PreferenceFragment;->f:Landroid/content/Context;

    sget v3, Landroidx/preference/m$a;->preferenceFragmentStyle:I

    const v4, 0x1010506

    invoke-static {v2, v3, v4}, Landroidx/core/content/a/g;->a(Landroid/content/Context;II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroidx/preference/m$h;->PreferenceFragment_android_layout:I

    iget v2, p0, Landroidx/preference/PreferenceFragment;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/PreferenceFragment;->g:I

    sget v1, Landroidx/preference/m$h;->PreferenceFragment_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroidx/preference/m$h;->PreferenceFragment_android_dividerHeight:I

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v5, Landroidx/preference/m$h;->PreferenceFragment_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Landroidx/preference/PreferenceFragment;->g:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, p3}, Landroidx/preference/PreferenceFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/PreferenceFragment$a;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->a(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v4, :cond_0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragment;->a(I)V

    :cond_0
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/PreferenceFragment$a;

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceFragment$a;->a(Z)V

    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->i:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/preference/PreferenceFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->i:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->a()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string p0, "android:preferences"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/preference/j;

    invoke-virtual {v0, p0}, Landroidx/preference/j;->a(Landroidx/preference/j$c;)V

    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/preference/j;

    invoke-virtual {v0, p0}, Landroidx/preference/j;->a(Landroidx/preference/j$a;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/preference/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/j;->a(Landroidx/preference/j$c;)V

    iget-object p0, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/preference/j;

    invoke-virtual {p0, v1}, Landroidx/preference/j;->a(Landroidx/preference/j$a;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->a()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean p1, p0, Landroidx/preference/PreferenceFragment;->d:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->b()V

    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->h:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->h:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/PreferenceFragment;->h:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceFragment;->e:Z

    return-void
.end method
