.class public final Lcolor/support/v7/internal/widget/TintManager;
.super Ljava/lang/Object;
.source "TintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final INSTANCE_CACHE:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcolor/support/v7/internal/widget/TintManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOULD_BE_USED:Z

.field private static final TAG:Ljava/lang/String; = "TintManager"


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;

.field private mTintLists:Landroid/util/SparseArray;
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

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcolor/support/v7/internal/widget/TintManager;->SHOULD_BE_USED:Z

    .line 51
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcolor/support/v7/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcolor/support/v7/internal/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    .line 54
    new-instance v0, Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcolor/support/v7/internal/widget/TintManager;->COLOR_FILTER_CACHE:Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private createColorOSDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x3

    .line 185
    new-array v1, v0, [[I

    .line 186
    new-array v0, v0, [I

    .line 190
    sget-object v2, Lcolor/support/v7/internal/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 191
    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorTintControlDisabled:I

    invoke-static {p1, v2}, Lcolor/support/v7/internal/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v3

    .line 194
    sget-object v2, Lcolor/support/v7/internal/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 195
    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorTintControlPressed:I

    invoke-static {p1, v2}, Lcolor/support/v7/internal/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v3

    .line 198
    sget-object v2, Lcolor/support/v7/internal/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 199
    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, v2}, Lcolor/support/v7/internal/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v3

    .line 202
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static get(Landroid/content/Context;)Lcolor/support/v7/internal/widget/TintManager;
    .locals 2

    .line 73
    sget-object v0, Lcolor/support/v7/internal/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/internal/widget/TintManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcolor/support/v7/internal/widget/TintManager;

    invoke-direct {v0, p0}, Lcolor/support/v7/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    .line 76
    sget-object v1, Lcolor/support/v7/internal/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    if-nez p2, :cond_0

    .line 250
    sget-object p2, Lcolor/support/v7/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 254
    :cond_0
    sget-object v0, Lcolor/support/v7/internal/widget/TintManager;->COLOR_FILTER_CACHE:Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;

    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 259
    sget-object v1, Lcolor/support/v7/internal/widget/TintManager;->COLOR_FILTER_CACHE:Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;

    invoke-virtual {v1, p1, p2, v0}, Lcolor/support/v7/internal/widget/TintManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 262
    :cond_1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static tintViewBackground(Landroid/view/View;Lcolor/support/v7/internal/widget/TintInfo;)V
    .locals 4

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    iget-boolean v1, p1, Lcolor/support/v7/internal/widget/TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p1, Lcolor/support/v7/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p1, Lcolor/support/v7/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 234
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 233
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-boolean v2, p1, Lcolor/support/v7/internal/widget/TintInfo;->mHasTintMode:Z

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcolor/support/v7/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 231
    :goto_0
    invoke-static {v0, v1, p1}, Lcolor/support/v7/internal/widget/TintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 240
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/internal/widget/TintManager;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final getDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 90
    iget-object v0, p0, Lcolor/support/v7/internal/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 93
    :cond_0
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 96
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 104
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 108
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/TintManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 110
    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/internal/widget/TintManager;->tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final getTintList(I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 156
    iget-object v0, p0, Lcolor/support/v7/internal/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    iget-object v2, p0, Lcolor/support/v7/internal/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_1
    if-nez v1, :cond_4

    .line 165
    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_back_arrow_normal:I

    if-ne p1, v2, :cond_2

    .line 166
    invoke-direct {p0, v0}, Lcolor/support/v7/internal/widget/TintManager;->createColorOSDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    .line 171
    iget-object v0, p0, Lcolor/support/v7/internal/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    .line 176
    :cond_3
    iget-object v0, p0, Lcolor/support/v7/internal/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method final getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 125
    iget-object p1, p0, Lcolor/support/v7/internal/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    :cond_0
    return p2
.end method
