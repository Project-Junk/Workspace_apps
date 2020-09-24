.class public Lcolor/support/v7/widget/SearchView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;,
        Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;,
        Lcolor/support/v7/widget/SearchView$SearchAutoComplete;,
        Lcolor/support/v7/widget/SearchView$OnSuggestionListener;,
        Lcolor/support/v7/widget/SearchView$OnCloseListener;,
        Lcolor/support/v7/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final IS_AT_LEAST_FROYO:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"

.field private static final Q_VERSION:Z


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field public final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDropDownAnchor:Landroid/view/View;

.field public mExpandedInActionView:Z

.field public final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field public mIconifiedByDefault:Z

.field private mIsHintTextSize:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcolor/support/v7/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnQueryChangeListener:Lcolor/support/v7/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSearchViewClickListener:Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;

.field private mOnSuggestionListener:Lcolor/support/v7/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field public final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field public final mSearchPlate:Landroid/view/View;

.field public final mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

.field public mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field public final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private final mTintManager:Lcolor/support/v7/internal/widget/TintManager;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field public final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcolor/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "Q"

    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    sput-boolean v1, Lcolor/support/v7/widget/SearchView;->Q_VERSION:Z

    .line 227
    new-instance v0, Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Lcolor/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 343
    sget v0, Lcolor/support/v7/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 359
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    new-instance v0, Lcolor/support/v7/widget/SearchView$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$1;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 244
    new-instance v0, Lcolor/support/v7/widget/SearchView$2;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$2;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Lcolor/support/v7/widget/SearchView$3;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$3;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 260
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 1038
    new-instance v0, Lcolor/support/v7/widget/SearchView$7;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$7;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1067
    new-instance v0, Lcolor/support/v7/widget/SearchView$8;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$8;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1255
    new-instance v0, Lcolor/support/v7/widget/SearchView$9;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$9;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1470
    new-instance v0, Lcolor/support/v7/widget/SearchView$10;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$10;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1481
    new-instance v0, Lcolor/support/v7/widget/SearchView$11;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$11;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1786
    new-instance v0, Lcolor/support/v7/widget/SearchView$12;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$12;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    const/4 v0, 0x1

    .line 2078
    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mIsHintTextSize:Z

    const/4 v1, 0x0

    .line 2080
    iput-object v1, p0, Lcolor/support/v7/widget/SearchView;->mOnSearchViewClickListener:Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;

    .line 360
    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->SearchView:[I

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 363
    invoke-static {p1}, Lcolor/support/v7/internal/widget/TintManager;->get(Landroid/content/Context;)Lcolor/support/v7/internal/widget/TintManager;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/widget/SearchView;->mTintManager:Lcolor/support/v7/internal/widget/TintManager;

    .line 365
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 366
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_layout:I

    sget v2, Lcolor/support/v7/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    .line 368
    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 370
    sget p1, Lcolor/support/v7/appcompat/R$id;->search_src_text:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    .line 371
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Lcolor/support/v7/widget/SearchView;)V

    .line 373
    sget p1, Lcolor/support/v7/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 374
    sget p1, Lcolor/support/v7/appcompat/R$id;->search_plate:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 375
    sget p1, Lcolor/support/v7/appcompat/R$id;->submit_area:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 376
    sget p1, Lcolor/support/v7/appcompat/R$id;->search_button:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 377
    sget p1, Lcolor/support/v7/appcompat/R$id;->search_go_btn:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 378
    sget p1, Lcolor/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 379
    sget p1, Lcolor/support/v7/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 380
    sget p1, Lcolor/support/v7/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 382
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_queryBackground:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_submitBackground:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 393
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget p3, Lcolor/support/v7/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    .line 395
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_commitIcon:I

    invoke-virtual {p2, p1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 397
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 404
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 405
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 406
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 407
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 410
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance p3, Lcolor/support/v7/widget/SearchView$4;

    invoke-direct {p3, p0}, Lcolor/support/v7/widget/SearchView$4;-><init>(Lcolor/support/v7/widget/SearchView;)V

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 418
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 420
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 422
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 425
    :cond_0
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 430
    :cond_1
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, p3, :cond_2

    .line 432
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 435
    :cond_2
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, p3, :cond_3

    .line 437
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setInputType(I)V

    .line 441
    :cond_3
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 442
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 444
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 447
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.WEB_SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 448
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string p3, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v0, "web_search"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 453
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 456
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 457
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_4

    .line 458
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    goto :goto_0

    .line 460
    :cond_4
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V

    .line 464
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 465
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->updateQueryHint()V

    .line 468
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v7/widget/SearchView;)Landroidx/cursoradapter/widget/CursorAdapter;
    .locals 0

    .line 128
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcolor/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 128
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcolor/support/v7/widget/SearchView;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$300(Lcolor/support/v7/widget/SearchView;)Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;
    .locals 0

    .line 128
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView;->mOnSearchViewClickListener:Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcolor/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcolor/support/v7/widget/SearchView;IILjava/lang/String;)Z
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcolor/support/v7/widget/SearchView;I)Z
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->onItemSelected(I)Z

    move-result p0

    return p0
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/widget/SearchView$6;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/SearchView$6;-><init>(Lcolor/support/v7/widget/SearchView;)V

    .line 485
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 474
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v1, Lcolor/support/v7/widget/SearchView$5;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/SearchView$5;-><init>(Lcolor/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 6

    .line 1427
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1428
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1429
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1430
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1431
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 1432
    iget-boolean v4, p0, Lcolor/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->support_abc_dropdownitem_icon_width:I

    .line 1433
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->support_abc_dropdownitem_text_padding_left:I

    .line 1434
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1436
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_1

    .line 1439
    iget v0, v2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_1

    .line 1441
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    sub-int v0, v1, v0

    .line 1443
    :goto_1
    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1444
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    .line 1446
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method

.method private changeTextSize(Ljava/lang/String;)V
    .locals 3

    .line 2083
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2084
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    .line 2085
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->oppo_searchview_text_hint_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 2084
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setTextSize(IF)V

    const/4 p1, 0x1

    .line 2086
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mIsHintTextSize:Z

    return-void

    .line 2087
    :cond_0
    iget-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mIsHintTextSize:Z

    if-eqz p1, :cond_1

    .line 2088
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    .line 2089
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->oppo_searchview_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 2088
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setTextSize(IF)V

    .line 2090
    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mIsHintTextSize:Z

    :cond_1
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 1601
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1606
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1608
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    const-string/jumbo p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 1610
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 1613
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    :cond_2
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p2, "app_data"

    .line 1616
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "action_key"

    .line 1619
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    .line 1620
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    :cond_4
    sget-boolean p1, Lcolor/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz p1, :cond_5

    .line 1623
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    .line 1724
    invoke-static {p1, v1}, Lcolor/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1726
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 1727
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    move-object v2, v1

    const-string v1, "suggest_intent_data"

    .line 1734
    invoke-static {p1, v1}, Lcolor/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1735
    sget-boolean v3, Lcolor/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 1736
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "suggest_intent_data_id"

    .line 1740
    invoke-static {p1, v3}, Lcolor/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    move-object v3, v0

    goto :goto_0

    .line 1745
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const-string v1, "suggest_intent_query"

    .line 1747
    invoke-static {p1, v1}, Lcolor/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "suggest_intent_extra_data"

    .line 1748
    invoke-static {p1, v1}, Lcolor/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    .line 1750
    invoke-direct/range {v1 .. v7}, Lcolor/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 1754
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    .line 1758
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Search suggestions cursor at row "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SearchView"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 1649
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1654
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1656
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1663
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1664
    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "app_data"

    .line 1665
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1671
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p1, "free_form"

    const/4 v4, 0x1

    .line 1679
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-lt v5, v6, :cond_4

    .line 1680
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1681
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1682
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1684
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1685
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v7

    .line 1687
    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1688
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v7

    .line 1690
    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_5

    .line 1691
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v4

    goto :goto_2

    :cond_4
    move-object v5, v7

    move-object v6, v5

    :cond_5
    :goto_2
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    .line 1694
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.PROMPT"

    .line 1695
    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.LANGUAGE"

    .line 1696
    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.MAX_RESULTS"

    .line 1697
    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_6

    goto :goto_3

    .line 1699
    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string p1, "calling_package"

    .line 1698
    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 1702
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 1703
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 1633
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1634
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1636
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "calling_package"

    .line 1635
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 890
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->support_abc_search_view_preferred_width:I

    .line 891
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 921
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 923
    iget-object v2, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 924
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_0

    .line 925
    :cond_0
    iget-object v2, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 929
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 1

    .line 1779
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1560
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1562
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed launch activity: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 1

    .line 1537
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v0}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1538
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1540
    invoke-direct {p0, v0, p2, p3}, Lcolor/support/v7/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1543
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 0

    .line 1451
    iget-object p2, p0, Lcolor/support/v7/widget/SearchView;->mOnSuggestionListener:Lcolor/support/v7/widget/SearchView$OnSuggestionListener;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 1452
    invoke-interface {p2, p1}, Lcolor/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 1453
    invoke-direct {p0, p1, p3, p2}, Lcolor/support/v7/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1454
    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1455
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->dismissSuggestions()V

    const/4 p1, 0x1

    return p1
.end method

.method private onItemSelected(I)Z
    .locals 1

    .line 1462
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnSuggestionListener:Lcolor/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_1

    .line 1463
    invoke-interface {v0, p1}, Lcolor/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1464
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1111
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1114
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    if-nez p1, :cond_1

    return v0

    .line 1117
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p3}, Lcolor/support/v4/view/c;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x54

    if-eq p2, p1, :cond_6

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x15

    if-eq p2, p1, :cond_4

    const/16 p3, 0x16

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x13

    if-ne p2, p1, :cond_7

    .line 1144
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_4
    :goto_0
    if-ne p2, p1, :cond_5

    move p1, v0

    goto :goto_1

    .line 1133
    :cond_5
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1134
    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result p1

    .line 1135
    :goto_1
    iget-object p2, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1136
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1137
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1138
    sget-object p1, Lcolor/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object p2, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    return p3

    .line 1122
    :cond_6
    :goto_2
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    .line 1123
    invoke-direct {p0, p1, v0, p2}, Lcolor/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .line 973
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 2

    .line 1504
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1505
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v1}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1509
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1511
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {p1, v1}, Landroidx/cursoradapter/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1515
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void

    .line 1518
    :cond_1
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void

    .line 1522
    :cond_2
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1570
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method private updateQueryHint()V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void

    .line 1185
    :cond_0
    sget-boolean v0, Lcolor/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1187
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 1192
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    .line 1195
    :cond_3
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 1204
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1205
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1206
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1213
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1224
    :cond_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1225
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1226
    invoke-virtual {v0, v1}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1230
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1231
    new-instance v0, Lcolor/support/v7/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v4, p0, Lcolor/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v3, v4}, Lcolor/support/v7/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Lcolor/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 1233
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1234
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    check-cast v0, Lcolor/support/v7/widget/SuggestionsAdapter;

    iget-boolean v1, p0, Lcolor/support/v7/widget/SearchView;->mQueryRefinement:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .line 952
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 953
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 954
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 957
    :goto_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 1

    .line 943
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 947
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6

    .line 895
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mIconified:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 899
    :goto_0
    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 901
    iget-object v5, p0, Lcolor/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 902
    invoke-direct {p0, v3}, Lcolor/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 903
    iget-object v2, p0, Lcolor/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 914
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->updateCloseButton()V

    if-nez v3, :cond_2

    move v0, v4

    .line 915
    :cond_2
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 916
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->updateSubmitArea()V

    return-void
.end method

.method private updateVoiceButton(Z)V
    .locals 2

    .line 1248
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1250
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1252
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 596
    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mClearingFocus:Z

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 598
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->clearFocus()V

    .line 599
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 600
    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mClearingFocus:Z

    return-void
.end method

.method public dismissSuggestions()V
    .locals 1

    .line 1316
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    return-void
.end method

.method public forceSuggestionQuery()V
    .locals 2

    .line 1768
    sget-boolean v0, Lcolor/support/v7/widget/SearchView;->Q_VERSION:Z

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    if-eqz v0, :cond_1

    .line 1770
    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->refreshAutoCompleteResults()V

    return-void

    .line 1773
    :cond_0
    sget-object v0, Lcolor/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1774
    sget-object v0, Lcolor/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    :cond_1
    return-void
.end method

.method public getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public getImeOptions()I
    .locals 1

    .line 553
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 571
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 851
    iget v0, p0, Lcolor/support/v7/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 658
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .line 698
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 700
    :cond_0
    sget-boolean v0, Lcolor/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    .line 702
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;
    .locals 1

    .line 2107
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 498
    iget v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 494
    iget v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroidx/cursoradapter/widget/CursorAdapter;
    .locals 1

    .line 833
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .line 813
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .line 783
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1580
    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1581
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    .line 1404
    invoke-virtual {p0, v1, v0}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1405
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    const/4 v1, 0x1

    .line 1406
    invoke-direct {p0, v1}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1407
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Lcolor/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v1, v2}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1408
    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mExpandedInActionView:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .line 1416
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1418
    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1419
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcolor/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    .line 1420
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lcolor/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1421
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1422
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method public onCloseClicked()V
    .locals 3

    .line 1323
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1325
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_2

    .line 1327
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnCloseListener:Lcolor/support/v7/widget/SearchView$OnCloseListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcolor/support/v7/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1329
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    .line 1331
    invoke-direct {p0, v1}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void

    .line 1335
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1337
    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1004
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1005
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 857
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void

    .line 862
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 863
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 876
    :cond_1
    iget v0, p0, Lcolor/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_6

    .line 877
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 882
    :cond_2
    iget p1, p0, Lcolor/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    .line 868
    :cond_4
    iget v0, p0, Lcolor/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_5

    .line 869
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 871
    :cond_5
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 886
    :cond_6
    :goto_0
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1035
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSearchClicked()V
    .locals 1

    const/4 v0, 0x0

    .line 1347
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1348
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    const/4 v0, 0x1

    .line 1349
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1350
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1351
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onSubmitQuery()V
    .locals 3

    .line 1299
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1300
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1301
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mOnQueryChangeListener:Lcolor/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    .line 1302
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcolor/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1303
    :cond_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1304
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcolor/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1306
    :cond_1
    invoke-virtual {p0, v2}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1307
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->dismissSuggestions()V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1273
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1274
    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1276
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1277
    :goto_0
    invoke-direct {p0, v1}, Lcolor/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 1278
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->updateCloseButton()V

    .line 1279
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 1280
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnQueryChangeListener:Lcolor/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1281
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mOnQueryChangeListener:Lcolor/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcolor/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1283
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .line 1383
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1386
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1387
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->forceSuggestionQuery()V

    :cond_0
    return-void
.end method

.method public onVoiceClicked()V
    .locals 2

    .line 1361
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    .line 1366
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1367
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcolor/support/v7/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1369
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1370
    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1371
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcolor/support/v7/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1373
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    .line 1378
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1394
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1396
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->postUpdateFocusedState()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 578
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 585
    invoke-direct {p0, v1}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    :cond_2
    return p1

    .line 589
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->onCloseClicked()V

    return-void

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 723
    :cond_0
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    .line 724
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 725
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setImeVisibility(Z)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 840
    iput p1, p0, Lcolor/support/v7/widget/SearchView;->mMaxWidth:I

    .line 842
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Lcolor/support/v7/widget/SearchView$OnCloseListener;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mOnCloseListener:Lcolor/support/v7/widget/SearchView$OnCloseListener;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Lcolor/support/v7/widget/SearchView$OnQueryTextListener;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mOnQueryChangeListener:Lcolor/support/v7/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSearchViewClickListener(Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;)V
    .locals 0

    .line 2098
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mOnSearchViewClickListener:Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Lcolor/support/v7/widget/SearchView$OnSuggestionListener;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mOnSuggestionListener:Lcolor/support/v7/widget/SearchView$OnSuggestionListener;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 670
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 672
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 673
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 677
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 678
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 690
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .line 801
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mQueryRefinement:Z

    .line 802
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    instance-of v1, v0, Lcolor/support/v7/widget/SuggestionsAdapter;

    if-eqz v1, :cond_1

    .line 803
    check-cast v0, Lcolor/support/v7/widget/SuggestionsAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_1
    return-void
.end method

.method public setSearchViewBackground()V
    .locals 2

    .line 2124
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2125
    sget-object v0, Lcolor/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcolor/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 2126
    :goto_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2128
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2130
    :cond_1
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2132
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2134
    :cond_2
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->invalidate()V

    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 1

    .line 510
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 511
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz p1, :cond_1

    .line 512
    sget-boolean p1, Lcolor/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz p1, :cond_0

    .line 513
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->updateSearchAutoComplete()V

    .line 515
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->updateQueryHint()V

    .line 518
    :cond_1
    sget-boolean p1, Lcolor/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->hasVoiceSearch()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 520
    iget-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz p1, :cond_3

    .line 523
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 525
    :cond_3
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isIconified()Z

    move-result p1

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    .line 773
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 774
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isIconified()Z

    move-result p1

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 1

    .line 823
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 825
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public updateCloseButton()V
    .locals 4

    .line 961
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 964
    iget-boolean v3, p0, Lcolor/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcolor/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 965
    :cond_1
    :goto_0
    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 968
    sget-object v0, Lcolor/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Lcolor/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method public updateFocusedState()V
    .locals 2

    .line 976
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 982
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 983
    sget-object v0, Lcolor/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcolor/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 985
    sget-object v0, Lcolor/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_2
    sget-object v0, Lcolor/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 990
    :goto_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 992
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 994
    :cond_3
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 996
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 998
    :cond_4
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->invalidate()V

    return-void
.end method
