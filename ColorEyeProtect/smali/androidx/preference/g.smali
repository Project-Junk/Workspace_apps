.class public abstract Landroidx/preference/g;
.super Landroidx/fragment/app/d;

# interfaces
.implements Landroidx/preference/DialogPreference$a;
.implements Landroidx/preference/j$a;
.implements Landroidx/preference/j$b;
.implements Landroidx/preference/j$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/g$a;,
        Landroidx/preference/g$e;,
        Landroidx/preference/g$b;,
        Landroidx/preference/g$d;,
        Landroidx/preference/g$c;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceFragment"


# instance fields
.field private final mDividerDecoration:Landroidx/preference/g$a;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPreferenceManager:Landroidx/preference/j;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    new-instance v0, Landroidx/preference/g$a;

    invoke-direct {v0, p0}, Landroidx/preference/g$a;-><init>(Landroidx/preference/g;)V

    iput-object v0, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$a;

    sget v0, Landroidx/preference/m$e;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/g;->mLayoutResId:I

    new-instance v0, Landroidx/preference/g$1;

    invoke-direct {v0, p0}, Landroidx/preference/g$1;-><init>(Landroidx/preference/g;)V

    iput-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/preference/g$2;

    invoke-direct {v0, p0}, Landroidx/preference/g$2;-><init>(Landroidx/preference/g;)V

    iput-object v0, p0, Landroidx/preference/g;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requirePreferenceManager()V
    .locals 1

    iget-object p0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This should be called after super.onCreate."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroidx/preference/g$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/preference/g$3;-><init>(Landroidx/preference/g;Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    iput-object v0, p0, Landroidx/preference/g;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private unbindPreferences()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onDetached()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/g;->onUnbindPreferences()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3

    invoke-direct {p0}, Landroidx/preference/g;->requirePreferenceManager()V

    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/preference/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/j;->a(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/g;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method bindPreferences()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/g;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onAttached()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/g;->onBindPreferences()V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0, p1}, Landroidx/preference/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public getCallbackFragment()Landroidx/fragment/app/d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getPreferenceManager()Landroidx/preference/j;
    .locals 0

    iget-object p0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    return-object p0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/preference/j;->d()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method protected onBindPreferences()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/m$a;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    sget v0, Landroidx/preference/m$g;->PreferenceThemeOverlay:I

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/preference/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0, p0}, Landroidx/preference/j;->a(Landroidx/preference/j$b;)V

    invoke-virtual {p0}, Landroidx/preference/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/preference/g;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 0

    new-instance p0, Landroidx/preference/h;

    invoke-direct {p0, p1}, Landroidx/preference/h;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object p0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/g;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/g;->getContext()Landroid/content/Context;

    move-result-object p3

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

    invoke-virtual {p0}, Landroidx/preference/g;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    new-instance p0, Landroidx/preference/k;

    invoke-direct {p0, p1}, Landroidx/preference/k;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/m;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroidx/preference/g;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/preference/m$h;->PreferenceFragmentCompat:[I

    sget v2, Landroidx/preference/m$a;->preferenceFragmentCompatStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroidx/preference/m$h;->PreferenceFragmentCompat_android_layout:I

    iget v2, p0, Landroidx/preference/g;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/g;->mLayoutResId:I

    sget v1, Landroidx/preference/m$h;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroidx/preference/m$h;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v5, Landroidx/preference/m$h;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/preference/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Landroidx/preference/g;->mLayoutResId:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, p3}, Landroidx/preference/g;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$a;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {p0, v1}, Landroidx/preference/g;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v4, :cond_0

    invoke-virtual {p0, v2}, Landroidx/preference/g;->setDividerHeight(I)V

    :cond_0
    iget-object p1, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$a;

    invoke-virtual {p1, v5}, Landroidx/preference/g$a;->a(Z)V

    iget-object p1, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/preference/g;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/g;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroidx/preference/g;->mHavePrefs:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/preference/g;->unbindPreferences()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/d;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/g$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/d;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$b;

    invoke-interface {v0, p0, p1}, Landroidx/preference/g$b;->a(Landroidx/preference/g;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/g$b;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$b;

    invoke-interface {v0, p0, p1}, Landroidx/preference/g$b;->a(Landroidx/preference/g;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/g;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/i;->a(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/a;->a(Ljava/lang/String;)Landroidx/preference/a;

    move-result-object p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/c;->a(Ljava/lang/String;)Landroidx/preference/c;

    move-result-object p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/d;->a(Ljava/lang/String;)Landroidx/preference/d;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/c;->setTargetFragment(Landroidx/fragment/app/d;I)V

    invoke-virtual {p0}, Landroidx/preference/g;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object p0

    const-string v0, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/i;Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/d;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/g$d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/d;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$d;

    invoke-interface {v0, p0, p1}, Landroidx/preference/g$d;->a(Landroidx/preference/g;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/g$d;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$d;

    invoke-interface {v0, p0, p1}, Landroidx/preference/g$d;->a(Landroidx/preference/g;Landroidx/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/d;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/g$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/d;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$c;

    invoke-interface {v0, p0, p1}, Landroidx/preference/g$c;->a(Landroidx/preference/g;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/g$c;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$c;

    invoke-interface {v0, p0, p1}, Landroidx/preference/g$c;->a(Landroidx/preference/g;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "PreferenceFragment"

    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/g;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/fragment/app/i;->f()Landroidx/fragment/app/g;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/preference/g;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/g;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/d;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/d;->setTargetFragment(Landroidx/fragment/app/d;I)V

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/g;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/n;->a(ILandroidx/fragment/app/d;)Landroidx/fragment/app/n;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->a(Ljava/lang/String;)Landroidx/fragment/app/n;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->b()I

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

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

    invoke-super {p0}, Landroidx/fragment/app/d;->onStart()V

    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0, p0}, Landroidx/preference/j;->a(Landroidx/preference/j$c;)V

    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0, p0}, Landroidx/preference/j;->a(Landroidx/preference/j$a;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/d;->onStop()V

    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/j;->a(Landroidx/preference/j$c;)V

    iget-object p0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0, v1}, Landroidx/preference/j;->a(Landroidx/preference/j$a;)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean p1, p0, Landroidx/preference/g;->mHavePrefs:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->bindPreferences()V

    iget-object p1, p0, Landroidx/preference/g;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/preference/g;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/g;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/g;->mInitDone:Z

    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/g;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/preference/g;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$a;

    invoke-virtual {p0, p1}, Landroidx/preference/g$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    iget-object p0, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$a;

    invoke-virtual {p0, p1}, Landroidx/preference/g$a;->a(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0, p1}, Landroidx/preference/j;->a(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/g;->onUnbindPreferences()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/g;->mHavePrefs:Z

    iget-boolean p1, p0, Landroidx/preference/g;->mInitDone:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/preference/g;->postBindPreferences()V

    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroidx/preference/g;->requirePreferenceManager()V

    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/preference/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/j;->a(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preference object with key "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a PreferenceScreen"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/g;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
