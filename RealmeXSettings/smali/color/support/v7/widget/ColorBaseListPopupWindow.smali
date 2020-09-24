.class public Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;,
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;,
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;,
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;,
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;,
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;,
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;,
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field protected mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 81
    :try_start_0
    const-class v0, Lcolor/support/v7/widget/ColorBasePopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "BaseListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 193
    sget v0, Lcolor/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 204
    sget v0, Lcolor/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, p3, v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 93
    iput v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHeight:I

    .line 94
    iput v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownGravity:I

    .line 101
    iput-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 102
    iput-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mForceIgnoreOutsideTouch:Z

    const v1, 0x7fffffff

    .line 103
    iput v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mListItemExpandMaximum:I

    .line 106
    iput v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptPosition:I

    .line 117
    new-instance v1, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V

    iput-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mResizePopupRunnable:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

    .line 118
    new-instance v1, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V

    iput-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTouchInterceptor:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;

    .line 119
    new-instance v1, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V

    iput-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mScrollListener:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;

    .line 120
    new-instance v1, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V

    iput-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mHideSelector:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 229
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mContext:Landroid/content/Context;

    .line 231
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 233
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHorizontalOffset:I

    .line 235
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffset:I

    .line 237
    iget v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 238
    iput-boolean v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 240
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    invoke-virtual {p0, p1, p2, p3, p4}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->createPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcolor/support/v7/widget/ColorBasePopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    .line 243
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {p1, v2}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setInputMethodMode(I)V

    .line 246
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 247
    invoke-static {p1}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mLayoutDirection:I

    return-void
.end method

.method static synthetic access$1000(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/widget/ListAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mResizePopupRunnable:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    return-object p0
.end method

.method private static isConfirmKey(I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private removePromptView()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 697
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 698
    check-cast v0, Landroid/view/ViewGroup;

    .line 699
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 4

    .line 1874
    sget-object v0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1876
    :try_start_0
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "BaseListPopupWindow"

    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 1878
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected buildDropDown()I
    .locals 11

    .line 1058
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 1059
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mContext:Landroid/content/Context;

    .line 1067
    new-instance v4, Lcolor/support/v7/widget/ColorBaseListPopupWindow$2;

    invoke-direct {v4, p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$2;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V

    iput-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1077
    new-instance v4, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    iget-boolean v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mModal:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-direct {v4, v0, v5}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    .line 1078
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1079
    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v5, v4}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    :cond_0
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    new-instance v5, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;

    iget-object v7, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v5, p0, v7}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Landroid/widget/ListAdapter;)V

    invoke-virtual {v4, v5}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1082
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1083
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v4, v6}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1084
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v4, v6}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1085
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    new-instance v5, Lcolor/support/v7/widget/ColorBaseListPopupWindow$3;

    invoke-direct {v5, p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$3;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V

    invoke-virtual {v4, v5}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1101
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mScrollListener:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;

    invoke-virtual {v4, v5}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1103
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v4, :cond_1

    .line 1104
    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v5, v4}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1107
    :cond_1
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    .line 1109
    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 1113
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1114
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1116
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1120
    iget v8, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptPosition:I

    if-eqz v8, :cond_3

    if-eq v8, v6, :cond_2

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Invalid hint position "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptPosition:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BaseListPopupWindow"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1122
    :cond_2
    invoke-virtual {v7, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1127
    :cond_3
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1128
    invoke-virtual {v7, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    :goto_0
    iget v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1140
    invoke-virtual {v5, v0, v3}, Landroid/view/View;->measure(II)V

    .line 1142
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1143
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    move v0, v4

    move-object v4, v7

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1149
    :goto_1
    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v5, v4}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 1151
    :cond_5
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getContentView()Landroid/view/View;

    .line 1152
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1155
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1156
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v5

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    goto :goto_2

    :cond_6
    move v0, v3

    .line 1164
    :goto_2
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v4}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1166
    iget-object v3, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1167
    iget-object v3, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    .line 1171
    iget-boolean v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v4, :cond_8

    .line 1172
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    .line 1175
    :cond_7
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1179
    :cond_8
    :goto_3
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    .line 1180
    invoke-virtual {v4}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getInputMethodMode()I

    .line 1181
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    .line 1182
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffset:I

    .line 1181
    invoke-virtual {v4, v5, v6}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v4

    .line 1184
    iget-boolean v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v5, :cond_d

    iget v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHeight:I

    if-ne v5, v2, :cond_9

    goto :goto_6

    .line 1189
    :cond_9
    iget v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_b

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v5, v2, :cond_a

    .line 1203
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_4
    move v6, v1

    goto :goto_5

    .line 1197
    :cond_a
    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mContext:Landroid/content/Context;

    .line 1198
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    .line 1197
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 1191
    :cond_b
    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mContext:Landroid/content/Context;

    .line 1192
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    .line 1191
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 1207
    :goto_5
    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    const/4 v7, 0x0

    const/4 v8, -0x1

    sub-int v9, v4, v0

    const/4 v10, -0x1

    invoke-virtual/range {v5 .. v10}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v1

    if-lez v1, :cond_c

    add-int/2addr v0, v3

    :cond_c
    add-int/2addr v1, v0

    return v1

    :cond_d
    :goto_6
    add-int/2addr v4, v3

    return v4
.end method

.method public clearListSelection()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 757
    invoke-static {v0, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->access$402(Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;Z)Z

    .line 759
    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1

    .line 1040
    new-instance v0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcolor/support/v7/widget/ColorBasePopupWindow;
    .locals 1

    .line 1884
    new-instance v0, Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcolor/support/v7/widget/ColorBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->dismiss()V

    .line 679
    invoke-direct {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->removePromptView()V

    .line 680
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 681
    iput-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    .line 682
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mResizePopupRunnable:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 426
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 417
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 390
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 522
    iget v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 443
    iget v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 726
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 852
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .line 292
    iget v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 805
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 828
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 831
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 818
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 844
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 462
    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 489
    iget v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 775
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 767
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 877
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    .line 883
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    .line 884
    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 885
    invoke-static {p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 886
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 889
    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v2}, Lcolor/support/v7/widget/ColorBasePopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 891
    iget-object v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    if-eqz v4, :cond_3

    .line 898
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    move v6, v1

    goto :goto_0

    .line 899
    :cond_1
    iget-object v6, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    .line 900
    invoke-virtual {v6, v1, v3}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    :goto_0
    if-eqz v5, :cond_2

    .line 901
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    .line 902
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v5, v4, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v4

    :goto_1
    move v5, v6

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    const/16 v6, 0x13

    if-eqz v2, :cond_4

    if-ne p1, v6, :cond_4

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v7, 0x14

    if-nez v2, :cond_6

    if-ne p1, v7, :cond_6

    if-lt v0, v4, :cond_6

    .line 909
    :cond_5
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->clearListSelection()V

    .line 910
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {p1, v3}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setInputMethodMode(I)V

    .line 911
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->show()V

    return v3

    .line 916
    :cond_6
    iget-object v8, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-static {v8, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->access$402(Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;Z)Z

    .line 919
    iget-object v8, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v8, p1, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 925
    iget-object p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setInputMethodMode(I)V

    .line 930
    iget-object p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 931
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->show()V

    if-eq p1, v6, :cond_7

    if-eq p1, v7, :cond_7

    const/16 p2, 0x17

    if-eq p1, p2, :cond_7

    const/16 p2, 0x42

    if-eq p1, p2, :cond_7

    goto :goto_3

    :cond_7
    return v3

    :cond_8
    if-eqz v2, :cond_9

    if-ne p1, v7, :cond_9

    if-ne v0, v4, :cond_a

    return v3

    :cond_9
    if-nez v2, :cond_a

    if-ne p1, v6, :cond_a

    if-ne v0, v5, :cond_a

    return v3

    :cond_a
    :goto_3
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 995
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 998
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 999
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1002
    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 1005
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1006
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1008
    invoke-virtual {p1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1010
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1011
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->dismiss()V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 971
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 973
    invoke-static {p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isConfirmKey(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 976
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->dismiss()V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public performItemClick(I)Z
    .locals 7

    .line 786
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 788
    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    .line 789
    invoke-virtual {v2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 790
    invoke-virtual {v2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public postShow()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V

    iput-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 259
    :cond_0
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 262
    :cond_1
    :goto_0
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 263
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 267
    :cond_2
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    if-eqz p1, :cond_3

    .line 268
    new-instance v0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v0, p0, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 509
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 512
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    return-void

    .line 514
    :cond_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->setWidth(I)V

    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    .line 482
    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownGravity:I

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 531
    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 452
    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    .line 862
    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    .line 305
    iput-boolean p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mModal:Z

    .line 306
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Lcolor/support/v7/widget/ColorBasePopupWindow$OnDismissListener;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setOnDismissListener(Lcolor/support/v7/widget/ColorBasePopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->removePromptView()V

    .line 567
    :cond_0
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3

    .line 736
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    .line 737
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 738
    invoke-static {v0, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->access$402(Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;Z)Z

    .line 739
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setSelection(I)V

    .line 741
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 742
    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 743
    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffset:I

    const/4 p1, 0x1

    .line 472
    iput-boolean p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 499
    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 13

    .line 585
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->buildDropDown()I

    move-result v0

    .line 590
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    .line 592
    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v2}, Lcolor/support/v7/widget/ColorBasePopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_9

    .line 593
    iget v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_0

    move v11, v6

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 598
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :cond_1
    move v11, v2

    .line 603
    :goto_0
    iget v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHeight:I

    if-ne v2, v6, :cond_6

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v6

    :goto_1
    if-eqz v1, :cond_4

    .line 608
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    iget v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    invoke-virtual {v1, v6, v5}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    .line 612
    :cond_4
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    iget v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_5

    move v2, v6

    goto :goto_3

    :cond_5
    move v2, v5

    :goto_3
    invoke-virtual {v1, v2, v6}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_6
    if-ne v2, v4, :cond_7

    :goto_4
    move v12, v0

    goto :goto_5

    :cond_7
    move v12, v2

    .line 623
    :goto_5
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    iget-boolean v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setOutsideTouchable(Z)V

    .line 625
    iget-object v7, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    iget v9, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHorizontalOffset:I

    iget v10, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v7 .. v12}, Lcolor/support/v7/widget/ColorBasePopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    .line 628
    :cond_9
    iget v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownWidth:I

    if-ne v1, v6, :cond_a

    move v1, v6

    goto :goto_8

    :cond_a
    if-ne v1, v4, :cond_b

    .line 632
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setWidth(I)V

    goto :goto_7

    .line 634
    :cond_b
    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setWidth(I)V

    :goto_7
    move v1, v5

    .line 638
    :goto_8
    iget v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHeight:I

    if-ne v2, v6, :cond_c

    move v0, v6

    goto :goto_a

    :cond_c
    if-ne v2, v4, :cond_d

    .line 642
    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v2, v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setHeight(I)V

    goto :goto_9

    .line 644
    :cond_d
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setHeight(I)V

    :goto_9
    move v0, v5

    .line 648
    :goto_a
    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v2, v1, v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setWindowLayoutMode(II)V

    .line 651
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcolor/support/v7/internal/widget/ColorSpinner;

    if-eqz v0, :cond_e

    .line 652
    invoke-direct {p0, v5}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    goto :goto_b

    .line 654
    :cond_e
    invoke-direct {p0, v3}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 659
    :goto_b
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    iget-boolean v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_f

    goto :goto_c

    :cond_f
    move v3, v5

    :goto_c
    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setOutsideTouchable(Z)V

    .line 660
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mTouchInterceptor:Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 661
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownGravity:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 663
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0, v6}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setSelection(I)V

    .line 665
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mModal:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mDropDownList:Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 666
    :cond_10
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->clearListSelection()V

    .line 668
    :cond_11
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mModal:Z

    if-nez v0, :cond_12

    .line 669
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mHideSelector:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method
