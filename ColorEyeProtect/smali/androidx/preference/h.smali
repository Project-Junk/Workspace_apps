.class public Landroidx/preference/h;
.super Landroidx/recyclerview/widget/RecyclerView$a;

# interfaces
.implements Landroidx/preference/Preference$b;
.implements Landroidx/preference/PreferenceGroup$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/preference/l;",
        ">;",
        "Landroidx/preference/Preference$b;",
        "Landroidx/preference/PreferenceGroup$b;"
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/PreferenceGroup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    new-instance v0, Landroidx/preference/h$1;

    invoke-direct {v0, p0}, Landroidx/preference/h$1;-><init>(Landroidx/preference/h;)V

    iput-object v0, p0, Landroidx/preference/h;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/preference/h;->e:Landroid/os/Handler;

    iget-object p1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/preference/h;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/preference/h;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/preference/h;->d:Ljava/util/List;

    iget-object p1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    instance-of p1, p1, Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->f()Z

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/h;->a(Z)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/h;->a()V

    return-void
.end method

.method private a(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)",
            "Landroidx/preference/b;"
        }
    .end annotation

    new-instance v0, Landroidx/preference/b;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroidx/preference/b;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    new-instance p2, Landroidx/preference/h$3;

    invoke-direct {p2, p0, p1}, Landroidx/preference/h$3;-><init>(Landroidx/preference/h;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v0, p2}, Landroidx/preference/b;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-object v0
.end method

.method private a(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_a

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->b(I)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct {p0, p1}, Landroidx/preference/h;->b(Landroidx/preference/PreferenceGroup;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->a()I

    move-result v6

    if-ge v4, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v6, v5, Landroidx/preference/PreferenceGroup;

    if-nez v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_3
    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->c()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_7

    :cond_4
    invoke-direct {p0, p1}, Landroidx/preference/h;->b(Landroidx/preference/PreferenceGroup;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v5}, Landroidx/preference/h;->b(Landroidx/preference/PreferenceGroup;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting an expandable group inside of another expandable group is not supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    invoke-direct {p0, v5}, Landroidx/preference/h;->a(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Landroidx/preference/h;->b(Landroidx/preference/PreferenceGroup;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->a()I

    move-result v7

    if-ge v4, v7, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    :goto_5
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    invoke-direct {p0, p1}, Landroidx/preference/h;->b(Landroidx/preference/PreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->a()I

    move-result v2

    if-le v4, v2, :cond_b

    invoke-direct {p0, p1, v1}, Landroidx/preference/h;->a(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/b;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method

.method private a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->e()V

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->b(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/preference/h$a;

    invoke-direct {v3, v2}, Landroidx/preference/h$a;-><init>(Landroidx/preference/Preference;)V

    iget-object v4, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Landroidx/preference/h;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    :cond_1
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroidx/preference/PreferenceGroup;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->a()I

    move-result p0

    const p1, 0x7fffffff

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public a(I)Landroidx/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/h;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroidx/preference/l;
    .locals 3

    iget-object p0, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/h$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/preference/m$h;->BackgroundStyle:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroidx/preference/m$h;->BackgroundStyle_android_selectableItemBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1080062

    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Landroidx/preference/h$a;->a:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1, v1}, Landroidx/core/f/t;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget v1, p0, Landroidx/preference/h$a;->b:I

    if-eqz v1, :cond_2

    iget p0, p0, Landroidx/preference/h$a;->b:I

    invoke-virtual {p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    new-instance p0, Landroidx/preference/l;

    invoke-direct {p0, p1}, Landroidx/preference/l;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method a()V
    .locals 4

    iget-object v0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/preference/h;->b:Ljava/util/List;

    iget-object v0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    iget-object v1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroidx/preference/h;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    iget-object v0, p0, Landroidx/preference/h;->c:Ljava/util/List;

    iget-object v1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v1}, Landroidx/preference/h;->a(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/h;->c:Ljava/util/List;

    iget-object v2, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceManager()Landroidx/preference/j;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/preference/j;->g()Landroidx/preference/j$d;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/preference/j;->g()Landroidx/preference/j$d;

    move-result-object v2

    new-instance v3, Landroidx/preference/h$2;

    invoke-direct {v3, p0, v0, v1, v2}, Landroidx/preference/h$2;-><init>(Landroidx/preference/h;Ljava/util/List;Ljava/util/List;Landroidx/preference/j$d;)V

    invoke-static {v3}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/f$a;)Landroidx/recyclerview/widget/f$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/f$b;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/h;->e()V

    :goto_1
    iget-object p0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->clearWasDetached()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/preference/h;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/preference/l;I)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/preference/h;->a(I)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    return-void
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Landroidx/preference/l;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/h;->a(Landroidx/preference/l;I)V

    return-void
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public b(I)J
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/h;->a(I)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getId()J

    move-result-wide p0

    return-wide p0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/preference/h;->a(Landroid/view/ViewGroup;I)Landroidx/preference/l;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Landroidx/preference/h;->e:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/preference/h;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroidx/preference/h;->e:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/preference/h;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/preference/h;->a(I)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Landroidx/preference/h$a;

    invoke-direct {v0, p1}, Landroidx/preference/h$a;-><init>(Landroidx/preference/Preference;)V

    iget-object p1, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    return p1

    :cond_0
    iget-object p1, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p0, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public c(Landroidx/preference/Preference;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/h;->b(Landroidx/preference/Preference;)V

    return-void
.end method

.method public d(Landroidx/preference/Preference;)I
    .locals 3

    iget-object v0, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
