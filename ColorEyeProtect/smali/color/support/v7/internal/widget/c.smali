.class public final Lcolor/support/v7/internal/widget/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/c$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field private static final b:Landroid/graphics/PorterDuff$Mode;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcolor/support/v7/internal/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcolor/support/v7/internal/widget/c$a;


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcolor/support/v7/internal/widget/c;->a:Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcolor/support/v7/internal/widget/c;->b:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcolor/support/v7/internal/widget/c;->c:Ljava/util/WeakHashMap;

    new-instance v0, Lcolor/support/v7/internal/widget/c$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcolor/support/v7/internal/widget/c$a;-><init>(I)V

    sput-object v0, Lcolor/support/v7/internal/widget/c;->d:Lcolor/support/v7/internal/widget/c$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/c;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcolor/support/v7/internal/widget/c;
    .locals 2

    sget-object v0, Lcolor/support/v7/internal/widget/c;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/internal/widget/c;

    if-nez v0, :cond_0

    new-instance v0, Lcolor/support/v7/internal/widget/c;

    invoke-direct {v0, p0}, Lcolor/support/v7/internal/widget/c;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcolor/support/v7/internal/widget/c;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Lcolor/support/v7/internal/widget/c;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    sget-object v0, Lcolor/support/v7/internal/widget/c;->d:Lcolor/support/v7/internal/widget/c$a;

    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/internal/widget/c$a;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v1, Lcolor/support/v7/internal/widget/c;->d:Lcolor/support/v7/internal/widget/c$a;

    invoke-virtual {v1, p1, p2, v0}, Lcolor/support/v7/internal/widget/c$a;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x3

    new-array v0, p0, [[I

    new-array p0, p0, [I

    sget-object v1, Lcolor/support/v7/internal/widget/b;->a:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcolor/support/v7/a/a$b;->colorTintControlDisabled:I

    invoke-static {p1, v1}, Lcolor/support/v7/internal/widget/b;->c(Landroid/content/Context;I)I

    move-result v1

    aput v1, p0, v2

    sget-object v1, Lcolor/support/v7/internal/widget/b;->d:[I

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget v1, Lcolor/support/v7/a/a$b;->colorTintControlPressed:I

    invoke-static {p1, v1}, Lcolor/support/v7/internal/widget/b;->a(Landroid/content/Context;I)I

    move-result v1

    aput v1, p0, v2

    sget-object v1, Lcolor/support/v7/internal/widget/b;->g:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget v1, Lcolor/support/v7/a/a$b;->colorTintControlNormal:I

    invoke-static {p1, v1}, Lcolor/support/v7/internal/widget/b;->a(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/internal/widget/c;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/internal/widget/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, p1}, Landroidx/core/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/c;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/c;->b(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {v1, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/internal/widget/c;->a(ILandroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final a(ILandroid/graphics/drawable/Drawable;)Z
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/internal/widget/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    :cond_0
    return p1
.end method

.method final b(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(I)Landroid/content/res/ColorStateList;
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/internal/widget/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcolor/support/v7/internal/widget/c;->f:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcolor/support/v7/internal/widget/c;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_1
    if-nez v1, :cond_4

    sget v2, Lcolor/support/v7/a/a$f;->color_back_arrow_normal:I

    if-ne p1, v2, :cond_2

    invoke-direct {p0, v0}, Lcolor/support/v7/internal/widget/c;->b(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcolor/support/v7/internal/widget/c;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/c;->f:Landroid/util/SparseArray;

    :cond_3
    iget-object p0, p0, Lcolor/support/v7/internal/widget/c;->f:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_4
    return-object v1
.end method
