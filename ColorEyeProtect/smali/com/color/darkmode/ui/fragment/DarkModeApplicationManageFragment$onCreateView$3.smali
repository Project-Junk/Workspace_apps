.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;
.super La/b/b/a/j;

# interfaces
.implements La/d/a/m;


# annotations
.annotation runtime La/b/b/a/e;
    b = "DarkModeApplicationManageFragment.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.color.darkmode.ui.fragment.DarkModeApplicationManageFragment$onCreateView$3"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/b/b/a/j;",
        "La/d/a/m<",
        "Lb/a/s;",
        "La/b/c<",
        "-",
        "La/r;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $exceptionHandler:Lb/a/n;

.field label:I

.field private p$:Lb/a/s;

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lb/a/n;La/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->$exceptionHandler:Lb/a/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La/b/b/a/j;-><init>(ILa/b/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La/b/c;)La/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "La/b/c<",
            "*>;)",
            "La/b/c<",
            "La/r;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->$exceptionHandler:Lb/a/n;

    invoke-direct {v0, v1, p0, p2}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lb/a/n;La/b/c;)V

    check-cast p1, Lb/a/s;

    iput-object p1, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->p$:Lb/a/s;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, La/b/c;

    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->create(Ljava/lang/Object;La/b/c;)La/b/c;

    move-result-object p0

    check-cast p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    sget-object p1, La/r;->a:La/r;

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v9, p0

    invoke-static {}, La/b/a/b;->a()Ljava/lang/Object;

    iget v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->label:I

    if-nez v0, :cond_13

    invoke-static/range {p1 .. p1}, La/l;->a(Ljava/lang/Object;)V

    iget-object v10, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->p$:Lb/a/s;

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {v10}, Lb/a/t;->a(Lb/a/s;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_2
    move-object v11, v1

    :goto_0
    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    :cond_3
    move-object v12, v1

    :goto_1
    if-eqz v11, :cond_11

    if-eqz v12, :cond_11

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v1, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    const-string v2, "context!!"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getOpenAppList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v14

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v1, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    const-string v2, "context!!"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getApplicationList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/color/darkmode/utils/AppNameComparator;->COMPLEX_COMPARATOR:Lcom/color/darkmode/utils/AppNameComparator;

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v15

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isRemoving()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMJob$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lb/a/ap;

    move-result-object v3

    invoke-interface {v3}, Lb/a/ap;->h()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, La/d/b/g;->a()V

    :cond_6
    const-string v4, "activity!!"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {}, La/d/b/g;->a()V

    :cond_7
    const-string v4, "activity!!"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v10}, Lb/a/t;->a(Lb/a/s;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_3

    :cond_8
    new-instance v8, Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    const-string v6, "icon"

    invoke-static {v0, v6}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0, v13}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$zoomDrawable(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v8, v4}, Lcom/color/support/preference/ColorSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/color/support/preference/ColorSwitchPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "packageName"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setPersistent(Z)V

    invoke-interface {v14, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    invoke-virtual {v8}, Lcom/color/support/preference/ColorSwitchPreference;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMOpenCount$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$setMOpenCount$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;I)V

    :cond_9
    new-instance v17, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v8

    move-object/from16 v3, p0

    move-object v4, v10

    move-object v5, v11

    move v6, v13

    move-object v7, v14

    move-object/from16 v18, v11

    move-object v11, v8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;-><init>(Ljava/lang/String;Lcom/color/support/preference/ColorSwitchPreference;Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;Lb/a/s;Landroid/content/pm/PackageManager;ILjava/util/Set;Landroid/content/ContentResolver;)V

    move-object/from16 v0, v17

    check-cast v0, Landroidx/preference/Preference$c;

    invoke-virtual {v11, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    move-object v8, v11

    check-cast v8, Landroidx/preference/Preference;

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceScreen;->b(Landroidx/preference/Preference;)Z

    move-object/from16 v11, v18

    goto/16 :goto_2

    :cond_a
    :goto_3
    sget-object v0, La/r;->a:La/r;

    return-object v0

    :cond_b
    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMJob$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lb/a/ap;

    move-result-object v0

    invoke-interface {v0}, Lb/a/ap;->h()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, La/d/b/g;->a()V

    :cond_c
    const-string v3, "activity!!"

    invoke-static {v0, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, La/d/b/g;->a()V

    :cond_d
    const-string v3, "activity!!"

    invoke-static {v0, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v10}, Lb/a/t;->a(Lb/a/s;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    new-instance v0, Landroidx/preference/Preference;

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0035

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v3, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceScreen;->b(Landroidx/preference/Preference;)Z

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMOppoTouchSearchView$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lcom/oppo/support/widget/OppoTouchSearchView;

    move-result-object v0

    new-instance v3, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;

    iget-object v4, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    iget-object v5, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v5}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    invoke-direct {v3, v4, v5, v15}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;)V

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$b;

    invoke-virtual {v0, v3}, Lcom/oppo/support/widget/OppoTouchSearchView;->setTouchSearchActionListener(Lcom/oppo/support/widget/OppoTouchSearchView$b;)V

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    goto :goto_4

    :cond_f
    move v1, v2

    :goto_4
    invoke-static {v0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$setMCanShowMore$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Z)V

    iget-object v0, v9, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMLoadingLayout$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$2;

    invoke-direct {v1, v9}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$2;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_10
    :goto_5
    sget-object v0, La/r;->a:La/r;

    return-object v0

    :cond_11
    :goto_6
    sget-object v0, La/r;->a:La/r;

    return-object v0

    :cond_12
    :goto_7
    sget-object v0, La/r;->a:La/r;

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
