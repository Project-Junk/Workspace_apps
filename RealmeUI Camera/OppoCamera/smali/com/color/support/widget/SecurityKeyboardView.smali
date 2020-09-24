.class public Lcom/color/support/widget/SecurityKeyboardView;
.super Landroid/view/View;
.source "SecurityKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/SecurityKeyboardView$a;,
        Lcom/color/support/widget/SecurityKeyboardView$d;,
        Lcom/color/support/widget/SecurityKeyboardView$c;,
        Lcom/color/support/widget/SecurityKeyboardView$b;
    }
.end annotation


# static fields
.field private static final aI:[I

.field private static aJ:[[[I

.field private static aK:[[I

.field private static aL:I

.field private static final at:I

.field private static au:I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private A:[Lcom/color/support/widget/j$a;

.field private B:Lcom/color/support/widget/SecurityKeyboardView$b;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Landroid/graphics/Paint;

.field private P:Landroid/graphics/Rect;

.field private Q:J

.field private R:J

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field a:Landroid/os/Handler;

.field private aA:Ljava/lang/StringBuilder;

.field private aB:Z

.field private aC:Landroid/graphics/Rect;

.field private aD:Landroid/graphics/Bitmap;

.field private aE:Z

.field private aF:Landroid/graphics/Canvas;

.field private aG:Landroid/view/accessibility/AccessibilityManager;

.field private aH:Landroid/media/AudioManager;

.field private aM:I

.field private aN:I

.field private aO:Landroid/content/res/ColorStateList;

.field private aP:Landroid/content/res/ColorStateList;

.field private aQ:Landroid/graphics/drawable/Drawable;

.field private aR:Landroid/graphics/drawable/Drawable;

.field private aS:Landroid/graphics/Typeface;

.field private aT:Lcom/color/support/widget/SecurityKeyboardView$c;

.field private aU:I

.field private aV:I

.field private aW:I

.field private aX:I

.field private aY:Z

.field private aZ:I

.field private aa:J

.field private ab:J

.field private ac:[I

.field private ad:Landroid/view/GestureDetector;

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:Z

.field private aj:Lcom/color/support/widget/j$a;

.field private ak:Landroid/graphics/Rect;

.field private al:Z

.field private am:Lcom/color/support/widget/SecurityKeyboardView$d;

.field private an:I

.field private ao:Z

.field private ap:I

.field private aq:F

.field private ar:F

.field private as:Landroid/graphics/drawable/Drawable;

.field private av:[I

.field private aw:I

.field private ax:I

.field private ay:J

.field private az:Z

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Z

.field private bb:F

.field private bc:I

.field private bd:I

.field private be:[Ljava/lang/String;

.field private bf:I

.field private bg:Landroid/content/res/ColorStateList;

.field private bh:I

.field private bi:I

.field private bj:I

.field private bk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/SecurityKeyboardView$a;",
            ">;"
        }
    .end annotation
.end field

.field private bl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private bm:Landroid/graphics/drawable/Drawable;

.field private bn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private e:Lcom/color/support/widget/j;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:F

.field private m:Landroid/widget/TextView;

.field private n:Lcolor/support/v7/widget/e;

.field private o:I

.field private p:I

.field private q:I

.field private final r:[I

.field private s:Landroid/widget/PopupWindow;

.field private t:Landroid/view/View;

.field private u:Lcom/color/support/widget/SecurityKeyboardView;

.field private v:Z

.field private w:Landroid/view/View;

.field private x:I

.field private y:I

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/color/support/widget/j$a;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x1

    .line 158
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x5

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->c:[I

    .line 159
    new-array v1, v0, [I

    const v3, 0x101023c

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->d:[I

    .line 253
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->at:I

    const/16 v1, 0xc

    .line 255
    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->au:I

    const/16 v1, 0x14

    .line 322
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->aI:[I

    .line 338
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->aL:I

    .line 339
    sget-object v1, Lcom/color/support/widget/SecurityKeyboardView;->aI:[I

    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 340
    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->aL:I

    if-ne v3, v4, :cond_6

    .line 343
    array-length v1, v1

    new-array v1, v1, [I

    move v4, v2

    .line 344
    :goto_0
    sget v5, Lcom/color/support/widget/SecurityKeyboardView;->aL:I

    if-ge v4, v5, :cond_2

    .line 345
    sget-object v5, Lcolor/support/v7/appcompat/R$styleable;->ViewDrawableStates:[I

    aget v5, v5, v4

    move v6, v2

    .line 346
    :goto_1
    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->aI:[I

    array-length v8, v7

    if-ge v6, v8, :cond_1

    .line 347
    aget v8, v7, v6

    if-ne v8, v5, :cond_0

    mul-int/lit8 v8, v4, 0x2

    .line 348
    aput v5, v1, v8

    add-int/2addr v8, v0

    add-int/lit8 v9, v6, 0x1

    .line 349
    aget v7, v7, v9

    aput v7, v1, v8

    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    shl-int/2addr v0, v3

    .line 353
    new-array v3, v0, [[[I

    sput-object v3, Lcom/color/support/widget/SecurityKeyboardView;->aJ:[[[I

    .line 354
    new-array v0, v0, [[I

    sput-object v0, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    move v0, v2

    .line 355
    :goto_2
    sget-object v3, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 357
    sget-object v4, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    new-array v3, v3, [I

    aput-object v3, v4, v0

    move v3, v2

    move v4, v3

    .line 359
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 360
    aget v5, v1, v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    .line 361
    sget-object v5, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    aget-object v5, v5, v0

    add-int/lit8 v6, v4, 0x1

    aget v7, v1, v3

    aput v7, v5, v4

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 341
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDS array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 406
    sget v0, Lcolor/support/v7/appcompat/R$style;->SecurityKeyboardView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 410
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, -0x1

    .line 162
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    const/4 v0, 0x2

    .line 176
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    const/4 v1, 0x0

    .line 205
    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->E:Z

    const/4 v2, 0x1

    .line 206
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->F:Z

    .line 207
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->G:Z

    .line 226
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    .line 227
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->W:I

    const/16 v3, 0xc

    .line 230
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ac:[I

    .line 234
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    .line 238
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ak:Landroid/graphics/Rect;

    .line 240
    new-instance v3, Lcom/color/support/widget/SecurityKeyboardView$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/color/support/widget/SecurityKeyboardView$d;-><init>(Lcom/color/support/widget/SecurityKeyboardView$1;)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->am:Lcom/color/support/widget/SecurityKeyboardView$d;

    .line 245
    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ap:I

    .line 256
    sget v3, Lcom/color/support/widget/SecurityKeyboardView;->au:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->av:[I

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->aA:Ljava/lang/StringBuilder;

    .line 273
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    .line 368
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    .line 370
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aN:I

    .line 374
    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aQ:Landroid/graphics/drawable/Drawable;

    .line 375
    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aR:Landroid/graphics/drawable/Drawable;

    .line 376
    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    .line 379
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aU:I

    .line 380
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aV:I

    .line 381
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aW:I

    .line 382
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aX:I

    .line 383
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->aY:Z

    .line 384
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    .line 385
    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 386
    iput v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    .line 387
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    .line 388
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bd:I

    .line 389
    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    .line 392
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bh:I

    .line 394
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bi:I

    .line 395
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    .line 396
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    .line 397
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bl:Ljava/util/ArrayList;

    .line 399
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    .line 412
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView:[I

    sget v0, Lcolor/support/v7/appcompat/R$style;->SecurityKeyboardView:I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 417
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 422
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyBackground:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->as:Landroid/graphics/drawable/Drawable;

    .line 423
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorVerticalCorrection:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->C:I

    .line 424
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewLayout:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 425
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewOffset:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->p:I

    .line 426
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewHeight:I

    const/16 v3, 0x50

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->q:I

    .line 427
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewWidth:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aM:I

    .line 428
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyTextSize:I

    const/16 v3, 0x12

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->h:I

    .line 429
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyTextColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->i:I

    .line 430
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorLabelTextSize:I

    const/16 v3, 0xe

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->g:I

    .line 431
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorPopupLayout:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ah:I

    .line 432
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorShadowColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->k:I

    .line 433
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorShadowRadius:I

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->j:F

    .line 435
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyBoardType:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aN:I

    .line 436
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aO:Landroid/content/res/ColorStateList;

    .line 437
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorGoTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aP:Landroid/content/res/ColorStateList;

    .line 439
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorSpecialKeyBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aQ:Landroid/graphics/drawable/Drawable;

    .line 440
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorEndKeyBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aR:Landroid/graphics/drawable/Drawable;

    .line 442
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorItemSymbolsColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    .line 443
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorSpecialItemBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bm:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 445
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->l:F

    .line 447
    new-instance v0, Lcolor/support/v7/widget/e;

    invoke-direct {v0, p1}, Lcolor/support/v7/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    if-eqz p4, :cond_0

    .line 449
    invoke-virtual {p3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    .line 450
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->o:I

    .line 451
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    iget-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Lcolor/support/v7/widget/e;->setContentView(Landroid/view/View;)V

    .line 452
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {p3, v4}, Lcolor/support/v7/widget/e;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 454
    :cond_0
    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->F:Z

    .line 457
    :goto_0
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {p3, v1}, Lcolor/support/v7/widget/e;->setTouchable(Z)V

    .line 458
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    new-instance p4, Lcom/color/support/widget/SecurityKeyboardView$1;

    invoke-direct {p4, p0}, Lcom/color/support/widget/SecurityKeyboardView$1;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-virtual {p3, p4}, Lcolor/support/v7/widget/e;->a(Lcolor/support/v7/widget/e$b;)V

    .line 466
    new-instance p3, Landroid/widget/PopupWindow;

    invoke-direct {p3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    .line 467
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {p3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iput-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->w:Landroid/view/View;

    .line 473
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    .line 474
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 475
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    int-to-float p4, v1

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 476
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 477
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    const/16 p4, 0xff

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 479
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->P:Landroid/graphics/Rect;

    .line 480
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    .line 482
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->as:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    .line 483
    iget-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->P:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    const/high16 p3, 0x43fa0000    # 500.0f

    .line 486
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p4, p3

    float-to-int p3, p4

    iput p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->an:I

    .line 488
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ao:Z

    .line 491
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "accessibility"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    const-string p3, "audio"

    .line 492
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aH:Landroid/media/AudioManager;

    .line 494
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->o()V

    .line 496
    invoke-virtual {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboardType(I)V

    .line 497
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(II[I)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 993
    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    .line 996
    iget v5, v0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 997
    iget-object v7, v0, Lcom/color/support/widget/SecurityKeyboardView;->av:[I

    const v8, 0x7fffffff

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 998
    iget-object v7, v0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {v7, v1, v2}, Lcom/color/support/widget/j;->a(II)[I

    move-result-object v7

    .line 999
    array-length v8, v7

    move v13, v5

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_0
    if-ge v5, v8, :cond_a

    .line 1001
    aget v14, v7, v5

    aget-object v14, v4, v14

    .line 1003
    invoke-virtual {v14, v1, v2}, Lcom/color/support/widget/j$a;->a(II)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1005
    aget v11, v7, v5

    .line 1010
    :cond_0
    iget-boolean v6, v0, Lcom/color/support/widget/SecurityKeyboardView;->N:Z

    if-eqz v6, :cond_1

    .line 1011
    invoke-virtual {v14, v1, v2}, Lcom/color/support/widget/j$a;->b(II)I

    move-result v6

    iget v10, v0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    if-lt v6, v10, :cond_2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v15, :cond_3

    :cond_2
    move v10, v6

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v10, v6

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_7

    .line 1015
    iget-object v6, v14, Lcom/color/support/widget/j$a;->a:[I

    array-length v6, v6

    if-ge v10, v13, :cond_4

    .line 1018
    aget v12, v7, v5

    move v13, v10

    :cond_4
    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 1023
    :goto_3
    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->av:[I

    move-object/from16 v16, v4

    array-length v4, v9

    if-ge v15, v4, :cond_8

    .line 1024
    aget v4, v9, v15

    if-le v4, v10, :cond_6

    add-int v4, v15, v6

    move-object/from16 v17, v7

    .line 1026
    array-length v7, v9

    sub-int/2addr v7, v15

    sub-int/2addr v7, v6

    invoke-static {v9, v15, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1028
    array-length v7, v3

    sub-int/2addr v7, v15

    sub-int/2addr v7, v6

    invoke-static {v3, v15, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_9

    add-int v7, v15, v4

    .line 1031
    iget-object v9, v14, Lcom/color/support/widget/j$a;->a:[I

    aget v9, v9, v4

    aput v9, v3, v7

    .line 1032
    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->av:[I

    aput v10, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v7

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    goto :goto_3

    :cond_7
    :goto_5
    move-object/from16 v16, v4

    :cond_8
    move-object/from16 v17, v7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    const/4 v6, 0x1

    goto :goto_0

    :cond_a
    const/4 v4, -0x1

    if-ne v11, v4, :cond_b

    move v9, v12

    goto :goto_6

    :cond_b
    move v9, v11

    .line 1043
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1044
    iget v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    if-gt v1, v3, :cond_c

    int-to-float v1, v2

    iget v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->bd:I

    iget v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->C:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    goto :goto_7

    :cond_c
    move v4, v9

    :goto_7
    return v4
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/widget/TextView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {v0}, Lcom/color/support/widget/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 741
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(IIIJ)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 1054
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v2, v1

    if-ge p1, v2, :cond_3

    .line 1055
    aget-object v1, v1, p1

    .line 1056
    iget-object v2, v1, Lcom/color/support/widget/j$a;->m:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 1057
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    iget-object p3, v1, Lcom/color/support/widget/j$a;->m:Ljava/lang/CharSequence;

    invoke-interface {p2, p3}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {p2, v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->b(I)V

    goto :goto_1

    .line 1060
    :cond_0
    iget-object v2, v1, Lcom/color/support/widget/j$a;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1062
    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->au:I

    new-array v4, v4, [I

    .line 1063
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1064
    invoke-direct {p0, p2, p3, v4}, Lcom/color/support/widget/SecurityKeyboardView;->a(II[I)I

    .line 1066
    iget-boolean p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->az:Z

    if-eqz p2, :cond_2

    .line 1067
    iget p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    if-eq p2, v0, :cond_1

    .line 1068
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    const/4 p3, -0x5

    sget-object v0, Lcom/color/support/widget/SecurityKeyboardView;->c:[I

    invoke-interface {p2, p3, v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(I[I)V

    .line 1069
    invoke-direct {p0, v2, v1}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILcom/color/support/widget/j$a;)V

    goto :goto_0

    .line 1071
    :cond_1
    iput v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    .line 1073
    :goto_0
    iget-object p2, v1, Lcom/color/support/widget/j$a;->a:[I

    iget p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    aget v2, p2, p3

    .line 1076
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILcom/color/support/widget/j$a;)V

    .line 1077
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {p2, v2, v4}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(I[I)V

    .line 1078
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {p2, v2}, Lcom/color/support/widget/SecurityKeyboardView$b;->b(I)V

    .line 1081
    :goto_1
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aw:I

    .line 1082
    iput-wide p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    :cond_3
    return-void
.end method

.method private a(IILcom/color/support/widget/j$a;)V
    .locals 7

    .line 2091
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2092
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2093
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2095
    iget-object v0, p3, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p3, v1

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, p3}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string v0, "ABC"

    const/16 v2, 0xa

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, -0x5

    const/4 v6, -0x6

    if-eq p2, v6, :cond_7

    if-eq p2, v5, :cond_6

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    int-to-char p3, p2

    .line 2125
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2122
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2115
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->a()Z

    move-result p3

    if-nez p3, :cond_3

    .line 2116
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_shift:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2118
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboard_view_keycode_low_shift:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 2101
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2102
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_letters:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_9

    const-string v0, "?#+="

    .line 2103
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 2104
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_symbol:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2098
    :cond_6
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    .line 2108
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2109
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_letters:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_9

    const-string v0, "123"

    .line 2110
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 2111
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_number:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_1
    if-eq p2, v5, :cond_b

    if-eq p2, v4, :cond_b

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_b

    if-ne p2, v6, :cond_a

    goto :goto_2

    .line 2132
    :cond_a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    .line 2130
    :cond_b
    :goto_2
    invoke-virtual {p0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_3
    return-void
.end method

.method private a(ILcom/color/support/widget/j$a;)V
    .locals 4

    .line 1877
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aT:Lcom/color/support/widget/SecurityKeyboardView$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    const/4 v1, -0x2

    if-eq p1, v1, :cond_6

    const/4 v1, -0x6

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    const-string v2, ""

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    .line 1886
    invoke-interface {v0, v2, p1}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x20

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    const-string p1, " "

    .line 1888
    invoke-interface {v0, p1, v3}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    const/4 p1, 0x1

    .line 1890
    invoke-interface {v0, v2, p1}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 1892
    :cond_4
    iget-object p1, p2, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    iget-object p1, p2, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    .line 1894
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->aT:Lcom/color/support/widget/SecurityKeyboardView$c;

    invoke-interface {p2, p1, v3}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private a(IZ)V
    .locals 1

    .line 1982
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/lit16 p2, v0, 0x4000

    goto :goto_0

    :cond_0
    and-int/lit16 p2, v0, -0x4001

    .line 1988
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(JI)V
    .locals 8

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 1812
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object v1, v1, p3

    .line 1813
    iget-object v2, v1, Lcom/color/support/widget/j$a;->a:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    .line 1814
    iput-boolean v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->az:Z

    .line 1815
    iget-wide v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    add-long/2addr v6, v3

    cmp-long p1, p1, v6

    if-gez p1, :cond_1

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aw:I

    if-ne p3, p1, :cond_1

    .line 1817
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    add-int/2addr p1, v5

    iget-object p2, v1, Lcom/color/support/widget/j$a;->a:[I

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    return-void

    .line 1820
    :cond_1
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    return-void

    .line 1824
    :cond_2
    iget-wide v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    add-long/2addr v0, v3

    cmp-long p1, p1, v0

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aw:I

    if-eq p3, p1, :cond_4

    .line 1825
    :cond_3
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->o()V

    :cond_4
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 11

    .line 1838
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bd:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 1840
    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1841
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, p2

    .line 1845
    iget v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    add-int/2addr v5, v4

    .line 1846
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    mul-float v8, v0, v7

    add-float/2addr v6, v8

    iget v9, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    mul-float/2addr v9, v7

    add-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v9, v6

    add-float/2addr v9, v0

    float-to-int v9, v9

    .line 1849
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    mul-float/2addr v7, v8

    add-float/2addr v10, v7

    add-float v7, v10, v0

    .line 1852
    invoke-virtual {v3, v4, v6, v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1853
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1854
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3, v7}, Lcom/color/support/widget/SecurityKeyboardView$a;->b(F)V

    .line 1855
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3, v10}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1861
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1862
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {v2}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object v2

    .line 1863
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 1864
    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 1866
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 1867
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    .line 1868
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v4

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->bi:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    int-to-float v6, v1

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    add-float/2addr v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    add-float/2addr v4, v6

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 1871
    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {p1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView;IIIJ)V
    .locals 0

    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/color/support/widget/SecurityKeyboardView;->a(IIIJ)V

    return-void
.end method

.method private a(Lcom/color/support/widget/j;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 769
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    if-nez p1, :cond_1

    return-void

    .line 771
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 774
    aget-object v3, p1, v1

    .line 775
    iget v4, v3, Lcom/color/support/widget/j$a;->e:I

    iget v5, v3, Lcom/color/support/widget/j$a;->f:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Lcom/color/support/widget/j$a;->g:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p1, v2

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 778
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    .line 779
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->D:I

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1309
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ah:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1312
    :cond_0
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v2, v1

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 1316
    :cond_1
    aget-object p1, v1, p1

    .line 1317
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Lcom/color/support/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 1319
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    const/4 v0, -0x1

    .line 1320
    invoke-direct {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private a(Landroid/view/MotionEvent;Z)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1486
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1487
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1488
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->C:I

    neg-int v4, v3

    if-lt v2, v4, :cond_0

    add-int/2addr v2, v3

    .line 1490
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1491
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 1492
    invoke-direct {v6, v1, v2, v7}, Lcom/color/support/widget/SecurityKeyboardView;->a(II[I)I

    move-result v8

    .line 1495
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->h()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    if-nez v9, :cond_4

    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v13, v9

    sub-int/2addr v13, v11

    if-eq v8, v13, :cond_4

    .line 1497
    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    if-eqz v0, :cond_3

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    if-eq v0, v12, :cond_3

    array-length v1, v9

    sub-int/2addr v1, v11

    if-ne v0, v1, :cond_3

    .line 1498
    aget-object v0, v9, v0

    iget-boolean v0, v0, Lcom/color/support/widget/j$a;->k:Z

    if-eqz v0, :cond_2

    .line 1499
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    aget-object v0, v0, v1

    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    if-ne v1, v12, :cond_1

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    invoke-virtual {v0, v11}, Lcom/color/support/widget/j$a;->a(Z)V

    .line 1500
    iput v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    .line 1501
    iput-boolean v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    .line 1503
    :cond_2
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    invoke-virtual {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    :cond_3
    return v10

    :cond_4
    move/from16 v9, p2

    .line 1509
    iput-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->al:Z

    if-nez v3, :cond_5

    .line 1512
    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->am:Lcom/color/support/widget/SecurityKeyboardView$d;

    invoke-virtual {v9}, Lcom/color/support/widget/SecurityKeyboardView$d;->a()V

    .line 1513
    :cond_5
    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->am:Lcom/color/support/widget/SecurityKeyboardView$d;

    invoke-virtual {v9, v0}, Lcom/color/support/widget/SecurityKeyboardView$d;->a(Landroid/view/MotionEvent;)V

    .line 1516
    iget-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    const/4 v13, 0x3

    if-eqz v9, :cond_6

    if-eqz v3, :cond_6

    if-eq v3, v13, :cond_6

    return v11

    .line 1521
    :cond_6
    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ad:Landroid/view/GestureDetector;

    invoke-virtual {v9, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    const/4 v14, 0x4

    if-eqz v9, :cond_7

    .line 1522
    invoke-direct {v6, v12}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    .line 1525
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1526
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    return v11

    .line 1532
    :cond_7
    iget-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    if-eqz v9, :cond_8

    if-eq v3, v13, :cond_8

    return v11

    .line 1536
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    .line 1537
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    .line 1540
    invoke-direct {v6, v9, v15}, Lcom/color/support/widget/SecurityKeyboardView;->d(II)I

    move-result v7

    move/from16 v16, v15

    const-wide/16 v14, 0x0

    if-eqz v3, :cond_1a

    if-eq v3, v11, :cond_13

    const/4 v10, 0x2

    if-eq v3, v10, :cond_a

    if-eq v3, v13, :cond_9

    goto/16 :goto_7

    .line 1710
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->m()V

    .line 1711
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->n()V

    .line 1712
    iput-boolean v11, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    .line 1713
    invoke-direct {v6, v12}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    .line 1714
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    invoke-virtual {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    .line 1717
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    move/from16 v7, v16

    .line 1718
    invoke-direct {v6, v9, v7}, Lcom/color/support/widget/SecurityKeyboardView;->d(II)I

    move-result v0

    if-eq v12, v0, :cond_20

    .line 1719
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_20

    .line 1720
    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    goto/16 :goto_7

    :cond_a
    if-eq v8, v12, :cond_d

    .line 1607
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-ne v3, v12, :cond_b

    .line 1608
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    .line 1609
    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->Q:J

    sub-long v9, v4, v9

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    goto :goto_1

    :cond_b
    if-ne v8, v3, :cond_c

    .line 1612
    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    iget-wide v13, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    sub-long v13, v4, v13

    add-long/2addr v9, v13

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    move/from16 v17, v11

    goto :goto_2

    .line 1614
    :cond_c
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    if-ne v3, v12, :cond_d

    .line 1615
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->o()V

    .line 1616
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->S:I

    .line 1617
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->J:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->T:I

    .line 1618
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->K:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->U:I

    .line 1619
    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    add-long/2addr v9, v4

    iget-wide v11, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    sub-long/2addr v9, v11

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->aa:J

    .line 1621
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    .line 1622
    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    :cond_d
    :goto_1
    const/16 v17, 0x0

    :goto_2
    if-nez v17, :cond_e

    .line 1628
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, -0x1

    if-eq v8, v3, :cond_f

    .line 1631
    iget-object v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1632
    iget-object v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    sget v9, Lcom/color/support/widget/SecurityKeyboardView;->at:I

    int-to-long v9, v9

    invoke-virtual {v8, v0, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_e
    const/4 v3, -0x1

    .line 1636
    :cond_f
    :goto_3
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-eq v0, v3, :cond_10

    .line 1637
    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    .line 1640
    :cond_10
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    .line 1641
    iput-wide v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    .line 1643
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1644
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    if-eq v7, v0, :cond_11

    if-eq v3, v7, :cond_11

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_11

    const/4 v0, 0x1

    .line 1645
    invoke-direct {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(IZ)V

    .line 1646
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1647
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->c()Ljava/lang/String;

    move-result-object v3

    .line 1648
    invoke-virtual {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 1649
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    if-eqz v3, :cond_11

    .line 1650
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    .line 1652
    invoke-virtual {v6, v7}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object v0

    .line 1653
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1654
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1655
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    .line 1658
    :cond_11
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    const/4 v3, -0x1

    if-eq v3, v0, :cond_12

    if-eq v7, v0, :cond_12

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    .line 1659
    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    .line 1661
    :cond_12
    iput v7, v6, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    goto/16 :goto_7

    :cond_13
    move/from16 v7, v16

    .line 1667
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->m()V

    .line 1668
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-ne v8, v0, :cond_14

    .line 1669
    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    sub-long v12, v4, v12

    add-long/2addr v10, v12

    iput-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    goto :goto_4

    .line 1671
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->o()V

    .line 1672
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->S:I

    .line 1673
    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    add-long/2addr v10, v4

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    sub-long/2addr v10, v12

    iput-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->aa:J

    .line 1674
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    .line 1675
    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    .line 1677
    :goto_4
    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->aa:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_15

    const-wide/16 v12, 0x46

    cmp-long v0, v10, v12

    if-gez v0, :cond_15

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->S:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_16

    .line 1679
    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    .line 1680
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->T:I

    .line 1681
    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->U:I

    move v10, v0

    move v11, v1

    goto :goto_5

    :cond_15
    const/4 v3, -0x1

    :cond_16
    move v10, v1

    move v11, v2

    .line 1683
    :goto_5
    invoke-direct {v6, v3}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    .line 1684
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ac:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1686
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    if-ne v0, v3, :cond_17

    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    if-nez v0, :cond_17

    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    if-nez v0, :cond_17

    .line 1687
    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    move-object/from16 v0, p0

    move v2, v10

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/SecurityKeyboardView;->a(IIIJ)V

    .line 1689
    :cond_17
    invoke-virtual {v6, v8}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    const/4 v0, -0x1

    .line 1690
    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    .line 1692
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    .line 1693
    iput-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    .line 1696
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1697
    invoke-direct {v6, v9, v7}, Lcom/color/support/widget/SecurityKeyboardView;->d(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_19

    .line 1698
    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 1699
    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    .line 1700
    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(I[I)V

    .line 1701
    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/color/support/widget/SecurityKeyboardView$b;->b(I)V

    .line 1702
    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->aT:Lcom/color/support/widget/SecurityKeyboardView$c;

    if-eqz v1, :cond_19

    .line 1703
    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-interface {v1, v0, v3}, Lcom/color/support/widget/SecurityKeyboardView$c;->a(Ljava/lang/String;I)V

    :cond_19
    move v1, v10

    move v2, v11

    goto/16 :goto_7

    :cond_1a
    move v3, v10

    .line 1545
    iput-boolean v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    .line 1546
    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->L:I

    .line 1547
    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->M:I

    .line 1548
    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->T:I

    .line 1549
    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->U:I

    .line 1550
    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->aa:J

    .line 1551
    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->ab:J

    const/4 v3, -0x1

    .line 1552
    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->S:I

    .line 1553
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    .line 1554
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->W:I

    .line 1555
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->Q:J

    .line 1556
    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->Q:J

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->R:J

    .line 1557
    invoke-direct {v6, v4, v5, v8}, Lcom/color/support/widget/SecurityKeyboardView;->a(JI)V

    .line 1559
    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    if-eq v8, v3, :cond_1b

    iget-object v5, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/color/support/widget/j$a;->a:[I

    const/4 v9, 0x0

    aget v10, v5, v9

    move v9, v10

    goto :goto_6

    :cond_1b
    const/4 v9, 0x0

    :goto_6
    invoke-interface {v4, v9}, Lcom/color/support/widget/SecurityKeyboardView$b;->a(I)V

    .line 1562
    iget v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-eq v4, v3, :cond_1c

    .line 1563
    iput v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    .line 1565
    :cond_1c
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_1d

    .line 1566
    iput-boolean v5, v6, Lcom/color/support/widget/SecurityKeyboardView;->ba:Z

    .line 1569
    :cond_1d
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-ltz v3, :cond_1e

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object v3, v4, v3

    iget-boolean v3, v3, Lcom/color/support/widget/j$a;->r:Z

    if-eqz v3, :cond_1e

    .line 1570
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    .line 1571
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v3, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1572
    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const-wide/16 v9, 0x190

    invoke-virtual {v4, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1573
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->l()Z

    .line 1575
    iget-boolean v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    if-eqz v3, :cond_1e

    const/4 v3, -0x1

    .line 1576
    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    goto :goto_7

    :cond_1e
    const/4 v3, -0x1

    .line 1580
    iget v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    if-eq v4, v3, :cond_1f

    .line 1581
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1582
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->at:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1584
    :cond_1f
    invoke-direct {v6, v8}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    .line 1586
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    if-eq v0, v7, :cond_20

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_20

    .line 1587
    iput v7, v6, Lcom/color/support/widget/SecurityKeyboardView;->bj:I

    const/4 v0, 0x1

    .line 1588
    invoke-direct {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(IZ)V

    .line 1589
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1590
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->c()Ljava/lang/String;

    move-result-object v3

    .line 1591
    invoke-virtual {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    if-eqz v3, :cond_20

    .line 1593
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_20

    .line 1595
    invoke-virtual {v6, v7}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object v0

    .line 1596
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1597
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    .line 1731
    :cond_20
    :goto_7
    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->J:I

    .line 1732
    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->K:I

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/color/support/widget/j$a;)Ljava/lang/CharSequence;
    .locals 3

    .line 1090
    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->az:Z

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aA:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1093
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aA:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/color/support/widget/j$a;->a:[I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aget p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1094
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aA:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1096
    :cond_1
    iget-object p1, p1, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->l()Z

    move-result p0

    return p0
.end method

.method private c(I)V
    .locals 9

    .line 1101
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    .line 1102
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    .line 1104
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    .line 1106
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    .line 1107
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_1

    .line 1108
    array-length v7, v2

    if-le v7, v0, :cond_1

    .line 1109
    aget-object v7, v2, v0

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 1110
    :goto_0
    invoke-virtual {v7, v3}, Lcom/color/support/widget/j$a;->a(Z)V

    .line 1111
    invoke-virtual {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    .line 1112
    iget-object v3, v7, Lcom/color/support/widget/j$a;->a:[I

    aget v3, v3, v5

    const/16 v7, 0x100

    .line 1113
    invoke-direct {p0, v7, v3}, Lcom/color/support/widget/SecurityKeyboardView;->c(II)V

    const/high16 v7, 0x10000

    .line 1116
    invoke-direct {p0, v7, v3}, Lcom/color/support/widget/SecurityKeyboardView;->c(II)V

    .line 1119
    :cond_1
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    if-eq v3, v6, :cond_2

    array-length v7, v2

    if-le v7, v3, :cond_2

    .line 1120
    aget-object v2, v2, v3

    .line 1121
    invoke-virtual {v2}, Lcom/color/support/widget/j$a;->a()V

    .line 1122
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    invoke-virtual {p0, v3}, Lcom/color/support/widget/SecurityKeyboardView;->a(I)V

    .line 1123
    iget-object v3, v2, Lcom/color/support/widget/j$a;->a:[I

    aget v3, v3, v5

    const/16 v7, 0x80

    .line 1125
    invoke-direct {p0, v7, v3, v2}, Lcom/color/support/widget/SecurityKeyboardView;->a(IILcom/color/support/widget/j$a;)V

    const v7, 0x8000

    .line 1128
    invoke-direct {p0, v7, v3, v2}, Lcom/color/support/widget/SecurityKeyboardView;->a(IILcom/color/support/widget/j$a;)V

    .line 1134
    :cond_2
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    invoke-direct {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->e(I)Z

    move-result v2

    .line 1136
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->f:I

    if-eq v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->F:Z

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 1137
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1138
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v6, :cond_3

    .line 1140
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 1141
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v7, 0x4b

    .line 1140
    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    if-eq p1, v6, :cond_5

    .line 1146
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1148
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->d(I)V

    goto :goto_1

    .line 1150
    :cond_4
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    .line 1151
    invoke-virtual {v0, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 1150
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private c(II)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1238
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    int-to-char p2, p2

    .line 1263
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1257
    :pswitch_0
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_shift:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1254
    :pswitch_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_mode_change:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1245
    :pswitch_2
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_cancel:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1251
    :pswitch_3
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_done:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1248
    :pswitch_4
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1242
    :pswitch_5
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_alt:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1260
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1266
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->al:Z

    return p0
.end method

.method private d(II)I
    .locals 5

    .line 1993
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1996
    :cond_0
    array-length v0, v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2002
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_2

    int-to-float v3, p2

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    .line 2003
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v4}, Lcom/color/support/widget/SecurityKeyboardView$a;->a()F

    move-result v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v4}, Lcom/color/support/widget/SecurityKeyboardView$a;->b()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic d(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$d;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->am:Lcom/color/support/widget/SecurityKeyboardView$d;

    return-object p0
.end method

.method private d(I)V
    .locals 11

    .line 1159
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    .line 1160
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    if-ltz p1, :cond_a

    .line 1161
    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto/16 :goto_6

    .line 1162
    :cond_0
    aget-object p1, v1, p1

    .line 1163
    iget-object v1, p1, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 1164
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/color/support/widget/j$a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/color/support/widget/j$a;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v6, p1, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v4, v4, v4, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1166
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1168
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1169
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->b(Lcom/color/support/widget/j$a;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    iget-object v1, p1, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    iget-object v1, p1, Lcom/color/support/widget/j$a;->a:[I

    array-length v1, v1

    if-ge v1, v3, :cond_3

    .line 1171
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->h:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1172
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1174
    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->o:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1176
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1179
    :goto_1
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1180
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1179
    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->measure(II)V

    .line 1183
    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aM:I

    .line 1184
    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->q:I

    .line 1185
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1187
    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1188
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1190
    :cond_4
    iget-boolean v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->E:Z

    if-nez v6, :cond_5

    .line 1192
    iget v6, p1, Lcom/color/support/widget/j$a;->i:I

    iget v7, p1, Lcom/color/support/widget/j$a;->e:I

    div-int/2addr v7, v3

    add-int/2addr v6, v7

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->aM:I

    div-int/2addr v7, v3

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    .line 1193
    iget v6, p1, Lcom/color/support/widget/j$a;->j:I

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->p:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    goto :goto_2

    .line 1196
    :cond_5
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v3

    rsub-int v6, v6, 0xa0

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    .line 1197
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    .line 1199
    :goto_2
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1200
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    invoke-virtual {p0, v6}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationInWindow([I)V

    .line 1201
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    aget v7, v6, v5

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->x:I

    add-int/2addr v7, v8

    aput v7, v6, v5

    .line 1202
    aget v7, v6, v2

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->y:I

    add-int/2addr v7, v8

    aput v7, v6, v2

    .line 1205
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, p1, Lcom/color/support/widget/j$a;->q:I

    if-eqz v7, :cond_6

    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->d:[I

    goto :goto_3

    :cond_6
    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->EMPTY_STATE_SET:[I

    :goto_3
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1207
    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget-object v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    aget v8, v7, v5

    add-int/2addr v6, v8

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    .line 1208
    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    aget v8, v7, v2

    add-int/2addr v6, v8

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    .line 1211
    invoke-virtual {p0, v7}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationOnScreen([I)V

    .line 1212
    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    iget-object v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    aget v2, v7, v2

    add-int/2addr v6, v2

    if-gez v6, :cond_8

    .line 1215
    iget v2, p1, Lcom/color/support/widget/j$a;->i:I

    iget v6, p1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v6

    div-int/2addr v6, v3

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    if-gt v2, v6, :cond_7

    .line 1216
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget p1, p1, Lcom/color/support/widget/j$a;->e:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    add-int/2addr v2, p1

    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    goto :goto_4

    .line 1218
    :cond_7
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget p1, p1, Lcom/color/support/widget/j$a;->e:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    .line 1220
    :goto_4
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    .line 1223
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1224
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    .line 1227
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1228
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1229
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->w:Landroid/view/View;

    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->H:I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->I:I

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1232
    :goto_5
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_6
    return-void
.end method

.method static synthetic e(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->an:I

    return p0
.end method

.method private e(I)Z
    .locals 7

    .line 2139
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x4b

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 2145
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2144
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    .line 2149
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/color/support/widget/j$a;->a:[I

    aget v0, v0, v1

    .line 2150
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    aget-object p1, v6, p1

    iget-object p1, p1, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    if-eq v0, v5, :cond_2

    const/4 p1, -0x5

    if-eq v0, p1, :cond_2

    const/4 p1, -0x2

    if-eq v0, p1, :cond_2

    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/16 p1, 0x20

    if-eq v0, p1, :cond_2

    const/4 p1, -0x6

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 2160
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    .line 2161
    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2160
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1
.end method

.method static synthetic f(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ao:Z

    return p0
.end method

.method static synthetic g(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->W:I

    return p0
.end method

.method static synthetic h(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->L:I

    return p0
.end method

.method static synthetic i(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->M:I

    return p0
.end method

.method static synthetic j(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$b;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ad:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/color/support/widget/SecurityKeyboardView$3;

    invoke-direct {v2, p0}, Lcom/color/support/widget/SecurityKeyboardView$3;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ad:Landroid/view/GestureDetector;

    .line 588
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ad:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 18

    move-object/from16 v0, p0

    .line 807
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    if-eqz v1, :cond_3

    .line 808
    :cond_0
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    if-eqz v4, :cond_2

    .line 809
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 811
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 813
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    .line 814
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    .line 816
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    .line 817
    iput-boolean v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    .line 820
    :cond_3
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-nez v1, :cond_4

    return-void

    .line 822
    :cond_4
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 823
    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    .line 824
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 826
    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->O:Landroid/graphics/Paint;

    .line 828
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->as:Landroid/graphics/drawable/Drawable;

    .line 830
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->ak:Landroid/graphics/Rect;

    .line 831
    iget-object v5, v0, Lcom/color/support/widget/SecurityKeyboardView;->P:Landroid/graphics/Rect;

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v6

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v7

    .line 834
    iget-object v8, v0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    .line 835
    iget-object v10, v0, Lcom/color/support/widget/SecurityKeyboardView;->aj:Lcom/color/support/widget/j$a;

    .line 837
    iget v11, v0, Lcom/color/support/widget/SecurityKeyboardView;->i:I

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v10, :cond_5

    .line 839
    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 841
    iget v11, v10, Lcom/color/support/widget/j$a;->i:I

    add-int/2addr v11, v6

    sub-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->left:I

    if-gt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/j$a;->j:I

    add-int/2addr v11, v7

    sub-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->top:I

    if-gt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/j$a;->i:I

    iget v12, v10, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v11, v12

    add-int/2addr v11, v6

    add-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->right:I

    if-lt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/j$a;->j:I

    iget v12, v10, Lcom/color/support/widget/j$a;->f:I

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    add-int/2addr v11, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v11, v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    .line 848
    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 849
    array-length v1, v8

    move v11, v3

    :goto_1
    if-ge v11, v1, :cond_1d

    .line 851
    aget-object v13, v8, v11

    if-eqz v2, :cond_6

    if-eq v10, v13, :cond_6

    move/from16 v17, v1

    move/from16 v16, v2

    goto/16 :goto_b

    .line 855
    :cond_6
    invoke-virtual {v13}, Lcom/color/support/widget/j$a;->b()[I

    move-result-object v14

    .line 858
    iget-object v15, v0, Lcom/color/support/widget/SecurityKeyboardView;->aQ:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_8

    iget-object v15, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v15, v15, v3

    const/4 v12, -0x1

    if-eq v15, v12, :cond_7

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v15, -0x5

    if-eq v12, v15, :cond_7

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v15, 0x20

    if-eq v12, v15, :cond_7

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v15, -0x2

    if-eq v12, v15, :cond_7

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v15, -0x6

    if-eq v12, v15, :cond_7

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v12

    if-eqz v12, :cond_8

    add-int/lit8 v12, v1, -0x2

    if-eq v11, v12, :cond_7

    add-int/lit8 v12, v1, -0x6

    if-eq v11, v12, :cond_7

    add-int/lit8 v12, v1, -0xa

    if-ne v11, v12, :cond_8

    .line 864
    :cond_7
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aQ:Landroid/graphics/drawable/Drawable;

    move/from16 v17, v1

    const/16 v15, 0xa

    goto :goto_3

    .line 865
    :cond_8
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aR:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_9

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v15, 0xa

    if-ne v12, v15, :cond_a

    .line 866
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aR:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_9
    const/16 v15, 0xa

    .line 868
    :cond_a
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->as:Landroid/graphics/drawable/Drawable;

    :goto_2
    move/from16 v17, v1

    .line 871
    :goto_3
    iget-object v1, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v1, v1, v3

    if-ne v1, v15, :cond_b

    .line 872
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aP:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v14, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    .line 874
    :cond_b
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aO:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v14, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 876
    :goto_4
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v12, :cond_c

    .line 879
    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 884
    :cond_c
    iget-object v1, v13, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_5

    :cond_d
    iget-object v1, v13, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-eqz v12, :cond_f

    .line 889
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 890
    iget v15, v13, Lcom/color/support/widget/j$a;->e:I

    iget v3, v14, Landroid/graphics/Rect;->right:I

    if-ne v15, v3, :cond_e

    iget v3, v13, Lcom/color/support/widget/j$a;->f:I

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v14, :cond_f

    .line 892
    :cond_e
    iget v3, v13, Lcom/color/support/widget/j$a;->e:I

    iget v14, v13, Lcom/color/support/widget/j$a;->f:I

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v15, v3, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 897
    :cond_f
    iget v3, v13, Lcom/color/support/widget/j$a;->i:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v14, v13, Lcom/color/support/widget/j$a;->j:I

    add-int/2addr v14, v7

    int-to-float v14, v14

    invoke-virtual {v4, v3, v14}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v12, :cond_10

    .line 900
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    if-eqz v1, :cond_1b

    const/4 v3, 0x0

    .line 907
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v14, 0x20

    if-eq v12, v14, :cond_12

    .line 909
    iget v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aU:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 910
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_8

    :cond_11
    const/16 v14, 0x20

    .line 912
    :cond_12
    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    if-ne v12, v14, :cond_13

    .line 913
    iget v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aW:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 914
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_8

    .line 916
    :cond_13
    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x2

    if-eq v12, v14, :cond_16

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v14, 0xa

    if-eq v12, v14, :cond_16

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x1

    if-eq v12, v14, :cond_16

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x6

    if-ne v12, v14, :cond_14

    goto :goto_6

    .line 928
    :cond_14
    iget v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aV:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 929
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 930
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_8

    .line 932
    :cond_15
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_8

    .line 919
    :cond_16
    :goto_6
    iget v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aX:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 920
    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v14, 0xa

    if-eq v12, v14, :cond_18

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x2

    if-eq v12, v14, :cond_18

    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/4 v14, -0x6

    if-ne v12, v14, :cond_17

    goto :goto_7

    .line 924
    :cond_17
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_8

    .line 922
    :cond_18
    :goto_7
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 935
    :goto_8
    iget-object v12, v0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    if-eqz v12, :cond_19

    .line 936
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 939
    :cond_19
    iget-object v12, v13, Lcom/color/support/widget/j$a;->a:[I

    aget v12, v12, v3

    const/16 v3, 0xa

    if-ne v12, v3, :cond_1a

    .line 940
    iget-object v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 943
    :cond_1a
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 945
    iget v12, v13, Lcom/color/support/widget/j$a;->f:I

    iget v14, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v12, v14

    div-int/lit8 v12, v12, 0x2

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v12, v3

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v14

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v12, v3

    int-to-float v3, v12

    .line 948
    iget v12, v13, Lcom/color/support/widget/j$a;->e:I

    iget v14, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v14

    iget v14, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v14

    div-int/lit8 v12, v12, 0x2

    iget v14, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v14

    int-to-float v12, v12

    invoke-virtual {v4, v1, v12, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 954
    :cond_1b
    iget-object v1, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1c

    .line 956
    iget v1, v13, Lcom/color/support/widget/j$a;->e:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget-object v3, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    .line 957
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 959
    iget v3, v13, Lcom/color/support/widget/j$a;->f:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v12

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v12

    iget-object v12, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    .line 960
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v3, v12

    div-int/lit8 v3, v3, 0x2

    iget v12, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v12

    int-to-float v12, v1

    int-to-float v14, v3

    .line 962
    invoke-virtual {v4, v12, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 963
    iget-object v12, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    iget-object v14, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    .line 964
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    iget-object v15, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    move/from16 v16, v2

    const/4 v2, 0x0

    .line 963
    invoke-virtual {v12, v2, v2, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 965
    iget-object v2, v13, Lcom/color/support/widget/j$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v3

    int-to-float v2, v2

    .line 966
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    :cond_1c
    :goto_9
    move/from16 v16, v2

    .line 968
    :goto_a
    iget v1, v13, Lcom/color/support/widget/j$a;->i:I

    neg-int v1, v1

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, v13, Lcom/color/support/widget/j$a;->j:I

    neg-int v2, v2

    sub-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move/from16 v1, v17

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_1d
    const/4 v1, 0x0

    .line 970
    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aj:Lcom/color/support/widget/j$a;

    .line 972
    iget-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    if-eqz v1, :cond_1e

    .line 973
    iget v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->l:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 987
    :cond_1e
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    .line 988
    iput-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aB:Z

    .line 989
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method static synthetic k(Lcom/color/support/widget/SecurityKeyboardView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->n()V

    return-void
.end method

.method static synthetic l(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bh:I

    return p0
.end method

.method private l()Z
    .locals 7

    .line 1737
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ag:I

    aget-object v0, v0, v1

    .line 1738
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->V:I

    iget v3, v0, Lcom/color/support/widget/j$a;->i:I

    iget v4, v0, Lcom/color/support/widget/j$a;->j:I

    iget-wide v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/color/support/widget/SecurityKeyboardView;->a(IIIJ)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic m(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/graphics/Typeface;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 1774
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1775
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1776
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1777
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 1790
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    .line 1791
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    const/4 v0, -0x1

    .line 1804
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aw:I

    const/4 v0, 0x0

    .line 1805
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ax:I

    const-wide/16 v1, -0x1

    .line 1806
    iput-wide v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ay:J

    .line 1807
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->az:Z

    return-void
.end method

.method private p()V
    .locals 7

    .line 1900
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    array-length v0, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1906
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bl:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bm:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    new-instance v4, Lcom/color/support/widget/SecurityKeyboardView$a;

    iget-object v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->bl:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v4, p0, v5, v6}, Lcom/color/support/widget/SecurityKeyboardView$a;-><init>(Lcom/color/support/widget/SecurityKeyboardView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1911
    sget-object v3, Lcom/color/support/widget/SecurityKeyboardView;->aJ:[[[I

    sget-object v4, Lcom/color/support/widget/SecurityKeyboardView;->aK:[[I

    array-length v5, v4

    new-array v5, v5, [[I

    aput-object v5, v3, v2

    .line 1912
    aget-object v3, v3, v2

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1914
    :cond_2
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1915
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    .line 1917
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->aL:I

    new-array v4, v4, [I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1918
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1919
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 1920
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 1921
    invoke-virtual {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1922
    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {v4}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private setItemRestore(I)V
    .locals 3

    const/4 v0, 0x0

    .line 2011
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(IZ)V

    .line 2012
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2013
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-virtual {v1}, Lcom/color/support/widget/SecurityKeyboardView$a;->c()Ljava/lang/String;

    move-result-object v1

    .line 2014
    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(ILandroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 2018
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object v0

    .line 2019
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bg:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2020
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bk:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/SecurityKeyboardView$a;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView$a;->a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 2022
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 1294
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1295
    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 1298
    :cond_1
    aget-object p1, v0, p1

    .line 1299
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aj:Lcom/color/support/widget/j$a;

    .line 1300
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    iget v1, p1, Lcom/color/support/widget/j$a;->i:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/color/support/widget/j$a;->j:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/color/support/widget/j$a;->i:I

    iget v4, p1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v3, v4

    .line 1301
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lcom/color/support/widget/j$a;->j:I

    iget v5, p1, Lcom/color/support/widget/j$a;->f:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1300
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1302
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->k()V

    .line 1303
    iget v0, p1, Lcom/color/support/widget/j$a;->i:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/color/support/widget/j$a;->j:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/color/support/widget/j$a;->i:I

    iget v3, p1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v2, v3

    .line 1304
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/color/support/widget/j$a;->j:I

    iget p1, p1, Lcom/color/support/widget/j$a;->f:I

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result p1

    add-int/2addr v3, p1

    .line 1303
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 705
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->x:I

    .line 706
    iput p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->y:I

    .line 707
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {p1}, Lcolor/support/v7/widget/e;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {p1}, Lcolor/support/v7/widget/e;->dismiss()V

    :cond_0
    return-void
.end method

.method protected a(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1928
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    .line 1930
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1931
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->b(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Lcom/color/support/widget/j;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/color/support/widget/j$a;)Z
    .locals 8

    .line 1334
    iget v2, p1, Lcom/color/support/widget/j$a;->q:I

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 1337
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    .line 1338
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_2

    .line 1339
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1341
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->ah:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    .line 1342
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    .line 1344
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    new-instance v1, Lcom/color/support/widget/SecurityKeyboardView$4;

    invoke-direct {v1, p0}, Lcom/color/support/widget/SecurityKeyboardView$4;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->setOnKeyboardActionListener(Lcom/color/support/widget/SecurityKeyboardView$b;)V

    .line 1380
    iget-object v0, p1, Lcom/color/support/widget/j$a;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1381
    new-instance v7, Lcom/color/support/widget/j;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/color/support/widget/j$a;->n:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    .line 1382
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/j;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_0

    .line 1384
    :cond_1
    new-instance v7, Lcom/color/support/widget/j;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0, v2}, Lcom/color/support/widget/j;-><init>(Landroid/content/Context;I)V

    .line 1386
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0, v7}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/j;)V

    .line 1387
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1388
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    .line 1389
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1390
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1388
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1392
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1394
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    .line 1397
    :goto_1
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationInWindow([I)V

    .line 1398
    iget v0, p1, Lcom/color/support/widget/j$a;->i:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ae:I

    .line 1399
    iget v0, p1, Lcom/color/support/widget/j$a;->j:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->af:I

    .line 1400
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ae:I

    iget p1, p1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ae:I

    .line 1401
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->af:I

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->af:I

    .line 1402
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ae:I

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    aget v0, v0, v6

    add-int/2addr p1, v0

    .line 1403
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->af:I

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->r:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1404
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    if-gez p1, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    invoke-virtual {v1, v3, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(II)V

    .line 1405
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->u:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->a()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/color/support/widget/SecurityKeyboardView;->a(Z)Z

    .line 1406
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1407
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1408
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->t:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1409
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v6, p1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1410
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->v:Z

    .line 1412
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    return v2

    :cond_4
    return v6
.end method

.method public a(Z)Z
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p1}, Lcom/color/support/widget/j;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 4

    .line 1280
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aC:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    .line 1281
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aB:Z

    .line 1282
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    return-void
.end method

.method protected b(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1935
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->b(I)[I

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1936
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected b(I)[I
    .locals 3

    .line 1942
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    goto :goto_0

    .line 1946
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/color/support/widget/SecurityKeyboardView;->b(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v0, v0, -0x401

    .line 1948
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1951
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method protected b(II)[I
    .locals 3

    .line 1956
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1958
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    or-int/lit8 v1, v1, 0x8

    .line 1964
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x1

    .line 1967
    :cond_2
    sget-object v0, Lcom/color/support/widget/SecurityKeyboardView;->aJ:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, v1

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 1973
    array-length v0, p1

    add-int/2addr v0, p2

    new-array p2, v0, [I

    .line 1974
    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 1976
    :cond_4
    new-array p2, p2, [I

    :goto_1
    return-object p2
.end method

.method protected c()V
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->b()V

    return-void
.end method

.method protected d()V
    .locals 1

    .line 1747
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->a()V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 1751
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->c()V

    return-void
.end method

.method protected f()V
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    invoke-interface {v0}, Lcom/color/support/widget/SecurityKeyboardView$b;->d()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {v0}, Lcolor/support/v7/widget/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->n:Lcolor/support/v7/widget/e;

    invoke-virtual {v0}, Lcolor/support/v7/widget/e;->dismiss()V

    :cond_0
    const/4 v0, -0x1

    .line 1763
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aZ:I

    .line 1765
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->m()V

    .line 1767
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->n()V

    const/4 v0, 0x0

    .line 1768
    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    .line 1769
    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aF:Landroid/graphics/Canvas;

    .line 1770
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getKeyboard()Lcom/color/support/widget/j;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/color/support/widget/SecurityKeyboardView$b;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 2027
    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aY:Z

    return v0
.end method

.method public i()Z
    .locals 2

    .line 2087
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {v0}, Lcom/color/support/widget/j;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 503
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 504
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->j()V

    .line 505
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lcom/color/support/widget/SecurityKeyboardView$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/SecurityKeyboardView$2;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 736
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->n()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1783
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1784
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->g()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 794
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 795
    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->k()V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 800
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->bf:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/graphics/Canvas;I)V

    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1420
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aG:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1432
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1424
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 1428
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1436
    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1437
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1439
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 1

    .line 749
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-nez p2, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 752
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 756
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {p2}, Lcom/color/support/widget/j;->b()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 784
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 785
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aD:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1452
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->ap:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v11, :cond_1

    const/4 v6, 0x0

    .line 1456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    .line 1455
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1457
    invoke-direct {p0, v2, v10}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v3

    .line 1458
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    if-ne v1, v11, :cond_0

    .line 1461
    invoke-direct {p0, p1, v11}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result p1

    move v11, p1

    goto :goto_0

    :cond_0
    move v11, v3

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    .line 1465
    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->aq:F

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->ar:F

    .line 1466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    .line 1465
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1467
    invoke-direct {p0, p1, v11}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_2
    if-ne v0, v11, :cond_3

    .line 1472
    invoke-direct {p0, p1, v10}, Lcom/color/support/widget/SecurityKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aq:F

    .line 1474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->ar:F

    .line 1480
    :cond_3
    :goto_0
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ap:I

    return v11
.end method

.method public setKeyboard(Lcom/color/support/widget/j;)V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 625
    invoke-direct {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->c(I)V

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->m()V

    .line 629
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    .line 630
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->e:Lcom/color/support/widget/j;

    invoke-virtual {v0}, Lcom/color/support/widget/j;->a()Ljava/util/List;

    move-result-object v0

    .line 631
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/color/support/widget/j$a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/color/support/widget/j$a;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->A:[Lcom/color/support/widget/j$a;

    .line 632
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->requestLayout()V

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->aE:Z

    .line 635
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->b()V

    .line 636
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Lcom/color/support/widget/j;)V

    .line 637
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->z:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 640
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->ai:Z

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 1

    .line 2051
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aS:Landroid/graphics/Typeface;

    .line 2053
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_lower_letter_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aU:I

    .line 2055
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_space_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aW:I

    .line 2057
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_lower_letter_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aV:I

    .line 2059
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_end_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aX:I

    .line 2061
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_numeric_keyboard_special_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bh:I

    .line 2065
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->oppo_password_numeric_keyboard_line_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bb:F

    .line 2067
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$array;->color_security_numeric_keyboard_special_symbol:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->be:[Ljava/lang/String;

    .line 2068
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_numeric_keyboard_special_symbol_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bf:I

    .line 2070
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_password_numeric_delete_dimen_keyWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    .line 2071
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_password_numeric_special_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bd:I

    .line 2073
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/j;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->bc:I

    .line 2075
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->p()V

    return-void
.end method

.method public setKeyboardViewEnabled(Z)V
    .locals 0

    .line 2031
    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aY:Z

    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/color/support/widget/SecurityKeyboardView$b;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->B:Lcom/color/support/widget/SecurityKeyboardView$b;

    return-void
.end method

.method public setOnKeyboardCharListener(Lcom/color/support/widget/SecurityKeyboardView$c;)V
    .locals 0

    .line 2040
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->aT:Lcom/color/support/widget/SecurityKeyboardView$c;

    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->w:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0

    .line 693
    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->F:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0

    .line 727
    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->N:Z

    return-void
.end method

.method public setVerticalCorrection(I)V
    .locals 0

    return-void
.end method
