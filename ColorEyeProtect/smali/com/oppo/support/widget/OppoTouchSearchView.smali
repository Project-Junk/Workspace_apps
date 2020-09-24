.class public Lcom/oppo/support/widget/OppoTouchSearchView;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/support/widget/OppoTouchSearchView$a;,
        Lcom/oppo/support/widget/OppoTouchSearchView$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/text/Collator;

.field private static final d:[I

.field private static e:[[[I

.field private static f:[[I

.field private static g:I


# instance fields
.field private A:Z

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:I

.field private E:I

.field private F:I

.field private G:Landroid/widget/PopupWindow;

.field private H:Landroid/widget/PopupWindow;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private final aA:Lcom/a/a/e;

.field private final aB:Lcom/a/a/g;

.field private aC:Ljava/lang/Runnable;

.field private aD:Landroid/os/Handler;

.field private aE:[I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Landroid/graphics/Rect;

.field private ae:I

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/ScrollView;

.field private ah:Landroid/view/ViewGroup;

.field private ai:Landroid/view/LayoutInflater;

.field private aj:I

.field private ak:I

.field private al:Landroid/graphics/drawable/Drawable;

.field private am:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/support/widget/OppoTouchSearchView$a;",
            ">;"
        }
    .end annotation
.end field

.field private an:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/support/widget/OppoTouchSearchView$a;",
            ">;"
        }
    .end annotation
.end field

.field private ao:I

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Landroid/content/res/ColorStateList;

.field private at:Landroid/content/res/ColorStateList;

.field private au:Landroid/content/res/ColorStateList;

.field private av:I

.field private aw:I

.field private ax:Landroid/graphics/Typeface;

.field private ay:Landroid/graphics/drawable/Drawable;

.field private final az:Lcom/a/a/b;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:[Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:Z

.field private t:[Ljava/lang/String;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Lcom/oppo/support/widget/OppoTouchSearchView$b;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/oppo/support/widget/OppoTouchSearchView$1;

    invoke-direct {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$1;-><init>()V

    sput-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->a:Ljava/util/Comparator;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->c:Ljava/text/Collator;

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->d:[I

    sget-object v0, Lcolor/support/v7/a/a$n;->ViewDrawableStates:[I

    array-length v0, v0

    sput v0, Lcom/oppo/support/widget/OppoTouchSearchView;->g:I

    sget-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->d:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/oppo/support/widget/OppoTouchSearchView;->g:I

    if-ne v0, v1, :cond_6

    sget-object v1, Lcom/oppo/support/widget/OppoTouchSearchView;->d:[I

    array-length v1, v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget v4, Lcom/oppo/support/widget/OppoTouchSearchView;->g:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    sget-object v4, Lcolor/support/v7/a/a$n;->ViewDrawableStates:[I

    aget v4, v4, v3

    move v6, v2

    :goto_1
    sget-object v7, Lcom/oppo/support/widget/OppoTouchSearchView;->d:[I

    array-length v7, v7

    if-ge v6, v7, :cond_1

    sget-object v7, Lcom/oppo/support/widget/OppoTouchSearchView;->d:[I

    aget v7, v7, v6

    if-ne v7, v4, :cond_0

    mul-int/lit8 v7, v3, 0x2

    aput v4, v1, v7

    add-int/2addr v7, v5

    sget-object v8, Lcom/oppo/support/widget/OppoTouchSearchView;->d:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    aput v8, v1, v7

    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    shl-int v0, v5, v0

    new-array v3, v0, [[[I

    sput-object v3, Lcom/oppo/support/widget/OppoTouchSearchView;->e:[[[I

    new-array v0, v0, [[I

    sput-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->f:[[I

    move v0, v2

    :goto_2
    sget-object v3, Lcom/oppo/support/widget/OppoTouchSearchView;->f:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    sget-object v4, Lcom/oppo/support/widget/OppoTouchSearchView;->f:[[I

    new-array v3, v3, [I

    aput-object v3, v4, v0

    move v3, v2

    move v4, v3

    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    aget v5, v1, v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    sget-object v5, Lcom/oppo/support/widget/OppoTouchSearchView;->f:[[I

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$b;->oppoTouchSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->p:I

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->w:Z

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->x:Z

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->y:Z

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->z:Z

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->A:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->C:Ljava/lang/CharSequence;

    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ac:I

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ae:I

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ak:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aq:Z

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ar:Z

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->as:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->at:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->av:I

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aw:I

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ax:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/a/a/i;->c()Lcom/a/a/i;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->az:Lcom/a/a/b;

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->az:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->b()Lcom/a/a/e;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aA:Lcom/a/a/e;

    new-instance v3, Lcom/oppo/support/widget/OppoTouchSearchView$2;

    invoke-direct {v3, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$2;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aB:Lcom/a/a/g;

    new-instance v3, Lcom/oppo/support/widget/OppoTouchSearchView$3;

    invoke-direct {v3, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$3;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aC:Ljava/lang/Runnable;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aD:Landroid/os/Handler;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aE:[I

    invoke-static {p0, v0}, Lcom/color/support/util/d;->a(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->i:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcolor/support/v7/a/a$n;->OppoTouchSearchView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoUnionEnable:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->A:Z

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoBackgroundAlignMode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->D:I

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoMarginLeft:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->E:I

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoMarginRigh:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->F:I

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinFirstHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    if-ne v2, p3, :cond_0

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_popup_first_default_height:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    :cond_0
    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinFirstWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    if-ne v2, p3, :cond_1

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_popup_first_default_width:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    :cond_1
    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinSecondHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->N:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->N:I

    if-ne v2, p3, :cond_2

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->N:I

    :cond_2
    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinSecondWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->O:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->O:I

    if-ne v2, p3, :cond_3

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->O:I

    :cond_3
    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinSecondOffset:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->J:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->J:I

    if-ne v2, p3, :cond_4

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_popupwin_default_offset:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->J:I

    :cond_4
    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinSecondMargin:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->K:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->K:I

    if-ne v2, p3, :cond_5

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_popupwin_second_marginEnd:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->K:I

    :cond_5
    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinMinTop:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->U:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->U:I

    if-ne v2, p3, :cond_6

    sget p3, Lcolor/support/v7/a/a$h;->oppo_touchsearch_popupwin_default_top_mincoordinate:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->U:I

    :cond_6
    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinSecondTextSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->T:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->T:I

    if-ne v2, p3, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/a/a$e;->oppo_touchsearch_popupwin_second_textsize:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->T:I

    :cond_7
    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_popupname_max_height:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->W:I

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinFirstTextSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    if-ne v2, p3, :cond_8

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_popupwin_first_textsize:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    :cond_8
    sget p3, Lcolor/support/v7/a/a$d;->color_touchsearch_popup_text_color:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ab:I

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoPopupWinFirstTextColor:I

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ab:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ab:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->F:I

    sget v1, Lcolor/support/v7/a/a$e;->oppo_touchsearch_right_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr p3, v1

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->F:I

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_popupwin_right_margin:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->V:I

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_char_offset:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->p:I

    sget p3, Lcolor/support/v7/a/a$l;->oppo_touchsearch_dot:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->B:Ljava/lang/CharSequence;

    sget p3, Lcolor/support/v7/a/a$f;->oppo_touchsearch_point:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ay:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoKeyCollect:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoKeyTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->as:Landroid/content/res/ColorStateList;

    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoFirstIsCharacter:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    sget p3, Lcolor/support/v7/a/a$f;->color_touchsearch_first_popup_bg:I

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v3, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->u:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    iget-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    :cond_9
    sget p3, Lcolor/support/v7/a/a$n;->OppoTouchSearchView_oppoKeyTextSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->av:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->av:I

    if-ne v2, p3, :cond_a

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_key_textsize:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->av:I

    :cond_a
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ae:I

    if-ne v2, p3, :cond_b

    sget p3, Lcolor/support/v7/a/a$e;->oppo_touchsearch_background_width:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ae:I

    :cond_b
    iget-boolean p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    if-nez p3, :cond_c

    sget p3, Lcolor/support/v7/a/a$a;->normal_touchsearch_keys:I

    :goto_0
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    goto :goto_1

    :cond_c
    sget p3, Lcolor/support/v7/a/a$a;->special_touchsearch_keys:I

    goto :goto_0

    :goto_1
    sget p3, Lcolor/support/v7/a/a$a;->union_touchsearch_keys:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->r:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->z:Z

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->d()V

    goto :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->c()V

    :goto_2
    return-void
.end method

.method private a(IIIILjava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/support/widget/OppoTouchSearchView$a;",
            ">;)I"
        }
    .end annotation

    if-le p3, p4, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v1

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->m:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    add-int/2addr v2, v1

    if-lt p2, v1, :cond_1

    if-ge p2, v2, :cond_1

    return v0

    :cond_1
    if-ge p2, v1, :cond_2

    add-int/lit8 v7, v0, -0x1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(IIIILjava/util/ArrayList;)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(IIIILjava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method private a(IILjava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/support/widget/OppoTouchSearchView$a;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(IIIILjava/util/ArrayList;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v2

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->m:I

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v2

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->m:I

    sub-int/2addr v2, v3

    if-le p2, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v1

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->m:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_2

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {p3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result p3

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->m:I

    sub-int/2addr p3, p0

    if-ge p2, p3, :cond_2

    div-int/lit8 v7, v0, 0x2

    goto :goto_0

    :cond_2
    move v7, p1

    :goto_0
    return v7
.end method

.method static synthetic a(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

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

    :goto_0
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ai:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ai:Landroid/view/LayoutInflater;

    sget v1, Lcolor/support/v7/a/a$j;->oppo_touchsearch_poppup_firstkey:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/a/a$g;->touchsearch_popup_content_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    int-to-float v3, v3

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Lcom/color/support/util/b;->a(FFI)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/color/support/util/d;->a(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ai:Landroid/view/LayoutInflater;

    sget v1, Lcolor/support/v7/a/a$j;->oppo_touchsearch_second_name:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/a/a$g;->touchsearch_popup_content_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ag:Landroid/widget/ScrollView;

    sget v1, Lcolor/support/v7/a/a$g;->touchsearch_popup_content_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ah:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c()I

    move-result v0

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->r:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v6}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c()I

    move-result v6

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v5}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v5

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v2

    add-int/2addr v5, v7

    int-to-float v2, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v3, v0, -0x2

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v4}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ay:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v5}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c()I

    move-result v5

    iget v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v2

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v6

    sub-int/2addr p0, v4

    div-int/lit8 p0, p0, 0x2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p0, v0

    add-int/2addr v2, p0

    int-to-float p0, v5

    int-to-float v0, v2

    invoke-virtual {p1, v3, p0, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ac:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ac:I

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    const/4 v1, -0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    if-eq v1, p1, :cond_0

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->i()V

    :cond_0
    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->z:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    if-eq v1, p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aq:Z

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-direct {p0, v0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(IZ)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {p1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b()Ljava/lang/String;

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(ILandroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    :cond_1
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->f()V

    :cond_2
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    if-eq v1, p1, :cond_3

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    if-eq p1, v0, :cond_3

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->setItemRestore(I)V

    :cond_3
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/CharSequence;II)V
    .locals 0

    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aE:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p1, p3

    iget p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->Q:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->l()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/support/widget/OppoTouchSearchView;)Lcom/a/a/e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aA:Lcom/a/a/e;

    return-object p0
.end method

.method static synthetic b()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->c:Ljava/text/Collator;

    return-object v0
.end method

.method private b(II)V
    .locals 3

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(IILjava/util/ArrayList;)I

    move-result v0

    iget-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->z:Z

    if-nez v1, :cond_1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    iget p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-direct {v1, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->r:[Ljava/lang/String;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->B:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c()I

    move-result v0

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->l:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Ljava/lang/CharSequence;II)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->C:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->v:Lcom/oppo/support/widget/OppoTouchSearchView$b;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->v:Lcom/oppo/support/widget/OppoTouchSearchView$b;

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->C:Ljava/lang/CharSequence;

    invoke-interface {p2, v0}, Lcom/oppo/support/widget/OppoTouchSearchView$b;->onKey(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c()I

    move-result v0

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    invoke-static {v3, v1}, Lcom/color/support/util/j;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v6}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c()I

    move-result v6

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v5}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v5

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v2

    add-int/2addr v5, v7

    int-to-float v2, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v5}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c()I

    move-result v5

    iget v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->d()I

    move-result v0

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v6

    sub-int/2addr p0, v4

    div-int/lit8 p0, p0, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p0, v1

    add-int/2addr v0, p0

    int-to-float p0, v5

    int-to-float v0, v0

    invoke-virtual {p1, v3, p0, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->C:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->B:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Lcom/oppo/support/widget/OppoTouchSearchView;)I
    .locals 0

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aw:I

    return p0
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->r:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v5, v3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->r:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, p0, v3, v6}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v2

    add-int/2addr v2, v1

    :goto_1
    const/4 v1, 0x2

    add-int/lit8 v4, v0, -0x2

    if-ge v2, v4, :cond_c

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ay:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, p0, v6, v3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-direct {v4, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    if-eq v2, v1, :cond_b

    const/4 v1, 0x4

    if-eq v2, v1, :cond_a

    const/4 v1, 0x6

    if-eq v2, v1, :cond_9

    const/16 v1, 0x8

    if-eq v2, v1, :cond_8

    const/16 v1, 0xa

    if-eq v2, v1, :cond_7

    const/16 v1, 0xc

    if-eq v2, v1, :cond_6

    const/16 v1, 0xe

    if-eq v2, v1, :cond_5

    const/16 v1, 0x10

    if-eq v2, v1, :cond_4

    const/16 v1, 0x12

    if-eq v2, v1, :cond_3

    goto :goto_4

    :cond_3
    const-string v1, "X"

    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    const-string v1, "Y"

    goto :goto_3

    :cond_4
    const-string v1, "U"

    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    const-string v1, "V"

    goto :goto_3

    :cond_5
    const-string v1, "S"

    goto :goto_2

    :cond_6
    const-string v1, "P"

    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    const-string v1, "Q"

    goto :goto_3

    :cond_7
    const-string v1, "M"

    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    const-string v1, "N"

    goto :goto_3

    :cond_8
    const-string v1, "J"

    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    const-string v1, "K"

    goto :goto_3

    :cond_9
    const-string v1, "H"

    :goto_2
    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_a
    const-string v1, "E"

    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    const-string v1, "F"

    goto :goto_3

    :cond_b
    const-string v1, "B"

    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b:Ljava/lang/CharSequence;

    const-string v1, "C"

    :goto_3
    iput-object v1, v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;->c:Ljava/lang/CharSequence;

    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    const-string v2, "#"

    invoke-direct {v1, p0, v3, v2}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcom/oppo/support/widget/OppoTouchSearchView;)I
    .locals 0

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->av:I

    return p0
.end method

.method private d()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-direct {v4, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ax:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-boolean v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->al:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v5, v3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v2

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, p0, v3, v6}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    const-string v5, "#"

    invoke-direct {v4, p0, v3, v5}, Lcom/oppo/support/widget/OppoTouchSearchView$a;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    sget-object v3, Lcom/oppo/support/widget/OppoTouchSearchView;->e:[[[I

    sget-object v4, Lcom/oppo/support/widget/OppoTouchSearchView;->f:[[I

    array-length v4, v4

    new-array v4, v4, [[I

    aput-object v4, v3, v2

    sget-object v3, Lcom/oppo/support/widget/OppoTouchSearchView;->f:[[I

    sget-object v4, Lcom/oppo/support/widget/OppoTouchSearchView;->e:[[[I

    aget-object v4, v4, v2

    sget-object v5, Lcom/oppo/support/widget/OppoTouchSearchView;->f:[[I

    array-length v5, v5

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->h:Ljava/util/List;

    sget v4, Lcom/oppo/support/widget/OppoTouchSearchView;->g:I

    new-array v4, v4, [I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(ILandroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {v4}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method static synthetic e(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->at:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private e()V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->z:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->j:I

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v0, v2

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    :cond_1
    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->z:Z

    return-void
.end method

.method static synthetic f(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private f()V
    .locals 6

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->e()V

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->j:I

    div-int v3, v2, v0

    iput v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    rem-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->o:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->m:I

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ad:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ad:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ad:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ad:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->n:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->l:I

    :cond_1
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    iget v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->l:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(I)V

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    iget v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->m:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->b(I)V

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->as:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->am:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/appcompat/widget/bb;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aE:[I

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->V:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->P:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->P:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->K:I

    add-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->R:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aE:[I

    aget v0, v0, v2

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->V:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->P:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->P:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->K:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->O:I

    sub-int/2addr v0, v2

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->k:I

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aE:[I

    aget v1, v2, v1

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->Q:I

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->P:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->Q:I

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->m()V

    :cond_4
    return-void
.end method

.method private getCharacterStartIndex()I
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic h(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ax:Landroid/graphics/Typeface;

    return-object p0
.end method

.method private h()V
    .locals 6

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->D:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ae:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ae:I

    add-int/2addr v1, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->D:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->F:I

    sub-int v1, v0, v1

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ae:I

    sub-int v0, v1, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->E:I

    goto :goto_0

    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ad:Landroid/graphics/Rect;

    return-void
.end method

.method private i()V
    .locals 2

    const/16 v0, 0x12e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oppo/util/ColorOSHapticFeedbackUtils;->performHapticFeedback(Landroid/view/View;II)Z

    return-void
.end method

.method private j()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->t:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->t:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->t:[Ljava/lang/String;

    array-length p0, p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aA:Lcom/a/a/e;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/e;->b(D)Lcom/a/a/e;

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aD:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aC:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->P:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->Q:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aA:Lcom/a/a/e;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/e;->a(D)Lcom/a/a/e;

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aA:Lcom/a/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/e;->b(D)Lcom/a/a/e;

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aD:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aC:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->R:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->S:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->O:I

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->I:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->O:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->R:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->S:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method private setItemRestore(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(ILandroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->f()V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->au:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView$a;->a(Lcom/oppo/support/widget/OppoTouchSearchView$a;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    invoke-direct {p0, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->setItemRestore(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v0, v0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    if-le v2, v1, :cond_1

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    if-ge v2, v0, :cond_1

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-direct {p0, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->setItemRestore(I)V

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->f()V

    :cond_1
    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    :cond_2
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->k()V

    :cond_3
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    return-void
.end method

.method protected a(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oppo/support/widget/OppoTouchSearchView;->b(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(I)[I
    .locals 3

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v0, v0, -0x401

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method protected a(II)[I
    .locals 3

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->b:Ljava/util/List;

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

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit8 v1, v1, 0x1

    :cond_2
    sget-object p0, Lcom/oppo/support/widget/OppoTouchSearchView;->e:[[[I

    aget-object p0, p0, p1

    aget-object p0, p0, v1

    if-nez p2, :cond_3

    return-object p0

    :cond_3
    if-eqz p0, :cond_4

    array-length p1, p0

    add-int/2addr p1, p2

    new-array p1, p1, [I

    array-length p2, p0

    invoke-static {p0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    new-array p1, p2, [I

    :goto_1
    return-object p1
.end method

.method protected b(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(I)[I

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->G:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public getTouchSearchActionListener()Lcom/oppo/support/widget/OppoTouchSearchView$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->v:Lcom/oppo/support/widget/OppoTouchSearchView$b;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aA:Lcom/a/a/e;

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aB:Lcom/a/a/g;

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Lcom/a/a/g;)Lcom/a/a/e;

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aA:Lcom/a/a/e;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/e;->a(D)Lcom/a/a/e;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->v:Lcom/oppo/support/widget/OppoTouchSearchView$b;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView$b;->onNameClick(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aA:Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->i()Lcom/a/a/e;

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->a()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->z:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->w:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->y:Z

    if-eqz p1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->h()V

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->f()V

    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->w:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->w:Z

    :cond_1
    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->y:Z

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->y:Z

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->y:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ac:I

    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->x:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->C:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->H:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->k()V

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->x:Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ac:I

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aE:[I

    invoke-virtual {p0, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getLocationOnScreen([I)V

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->g()V

    :pswitch_2
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ac:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->b(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCharTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->at:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setCharTextSize(I)V
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aw:I

    :cond_0
    return-void
.end method

.method public setFirstKeyIsCharacter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ap:Z

    return-void
.end method

.method public setFirstKeyPopupDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->an:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;

    iget-object v0, v0, Lcom/oppo/support/widget/OppoTouchSearchView$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setName([Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ah:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_2

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->M:I

    iget v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move v5, v0

    :goto_1
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ai:Landroid/view/LayoutInflater;

    sget v7, Lcolor/support/v7/a/a$j;->oppo_touchsearch_popup_content_item:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->T:I

    iget-object v8, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->i:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    const/4 v9, 0x4

    int-to-float v7, v7

    invoke-static {v7, v8, v9}, Lcom/color/support/util/b;->a(FFI)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v0, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ah:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_2
    sub-int v5, v2, v1

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ah:Landroid/view/ViewGroup;

    sub-int v6, v2, v4

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ah:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ag:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->N:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->I:I

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->I:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->W:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->I:I

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->I:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ag:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->Q:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->I:I

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->L:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->S:I

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aE:[I

    aget p1, p1, v3

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->J:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->I:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aE:[I

    aget v0, v0, v3

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->J:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->S:I

    if-ge v1, v0, :cond_5

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->S:I

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->S:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->S:I

    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->m()V

    return-void
.end method

.method public setPopupTextView(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->l()V

    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->setTouchBarSelectedText(Ljava/lang/String;)V

    return-void
.end method

.method public setPopupWindowFirstTextSize(I)V
    .locals 1

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    const/4 v0, 0x0

    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aa:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ab:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ab:I

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ab:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .locals 1

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->U:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->U:I

    :cond_0
    return-void
.end method

.method public setTouchBarSelectedText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->af:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->ao:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x41

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->C:Ljava/lang/CharSequence;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->q:[Ljava/lang/String;

    array-length v0, v0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->aj:I

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTouchSearchActionListener(Lcom/oppo/support/widget/OppoTouchSearchView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->v:Lcom/oppo/support/widget/OppoTouchSearchView$b;

    return-void
.end method

.method public setUnionEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->A:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->A:Z

    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->f()V

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    :cond_0
    return-void
.end method
