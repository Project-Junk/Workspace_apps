.class public Lcom/color/eyeprotect/ui/widget/a;
.super Landroidx/preference/h;


# instance fields
.field final a:I

.field b:Z

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/h;-><init>(Landroidx/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/color/eyeprotect/ui/widget/a;->f:I

    iput-object p2, p0, Lcom/color/eyeprotect/ui/widget/a;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/color/eyeprotect/ui/widget/a;->e:Z

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x101030e

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/a;->c:I

    const p1, -0x1b1b1c

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/a;->a:I

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/ui/widget/a;I)I
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/a;->f:I

    return p1
.end method

.method private static a(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    const/16 v10, 0x10

    const/4 v11, 0x1

    const/4 v12, 0x6

    if-ge v4, v12, :cond_1

    int-to-double v13, v4

    add-double/2addr v13, v6

    mul-double/2addr v13, v8

    int-to-double v6, v12

    div-double/2addr v13, v6

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v7, v13

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v1, :cond_0

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v3

    aput-object v6, v5, v11

    invoke-direct {v7, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v12, 0xfa

    invoke-virtual {v2, v4, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v4, 0x1f

    move v12, v3

    :goto_2
    const/16 v13, 0x190

    if-ge v12, v4, :cond_4

    rsub-int/lit8 v14, v12, 0x1f

    int-to-double v14, v14

    sub-double/2addr v14, v6

    mul-double/2addr v14, v8

    int-to-double v6, v4

    div-double/2addr v14, v6

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v7, v14

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v1, :cond_2

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v13, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v13, v3

    aput-object v6, v13, v11

    invoke-direct {v7, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v6, 0x1e

    if-ne v12, v6, :cond_3

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v6, v13}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v2, v1, v13}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_5
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-object v2
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f0800ff

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/color/eyeprotect/ui/widget/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/color/eyeprotect/ui/widget/a;->b:Z

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/a;->a:I

    invoke-static {v0, p2}, Lcom/color/eyeprotect/ui/widget/a;->a(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    sget-object p2, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v0, "HighlightableAdapter"

    const-string v1, "AddHighlight: starting fade in animation"

    invoke-virtual {p2, v0, v1}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/ui/widget/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/ui/widget/a;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/ui/widget/a;->b(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/ui/widget/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/a;->e:Z

    return p1
.end method

.method private b(Landroid/view/View;Z)V
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/ui/widget/a;->c:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "HighlightableAdapter"

    const-string p2, "Starting fade out animation"

    invoke-virtual {p0, p1, p2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/color/eyeprotect/ui/widget/a$2;

    invoke-direct {v0, p0, p1}, Lcom/color/eyeprotect/ui/widget/a$2;-><init>(Lcom/color/eyeprotect/ui/widget/a;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/color/eyeprotect/ui/widget/a;->e:Z

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/widget/a;->a(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/ui/widget/a;->a(I)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v1, v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    return-void

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    :cond_3
    new-instance p2, Lcom/color/eyeprotect/ui/widget/a$1;

    invoke-direct {p2, p0, v0}, Lcom/color/eyeprotect/ui/widget/a$1;-><init>(Lcom/color/eyeprotect/ui/widget/a;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Landroidx/preference/l;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/h;->a(Landroidx/preference/l;I)V

    invoke-virtual {p0, p1, p2}, Lcom/color/eyeprotect/ui/widget/a;->b(Landroidx/preference/l;I)V

    return-void
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Landroidx/preference/l;

    invoke-virtual {p0, p1, p2}, Lcom/color/eyeprotect/ui/widget/a;->a(Landroidx/preference/l;I)V

    return-void
.end method

.method b(Landroidx/preference/l;I)V
    .locals 1

    iget-object p1, p1, Landroidx/preference/l;->a:Landroid/view/View;

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/a;->f:I

    if-ne p2, v0, :cond_0

    iget-boolean p2, p0, Lcom/color/eyeprotect/ui/widget/a;->b:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/ui/widget/a;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0800ff

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/ui/widget/a;->b(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/ui/widget/a;->e:Z

    return p0
.end method
