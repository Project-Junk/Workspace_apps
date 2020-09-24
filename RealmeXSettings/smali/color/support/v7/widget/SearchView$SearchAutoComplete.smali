.class public Lcolor/support/v7/widget/SearchView$SearchAutoComplete;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mHasPendingShowSoftInputRequest:Z

.field final mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

.field private mSearchView:Lcolor/support/v7/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1815
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006b

    .line 1819
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1823
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1808
    new-instance p1, Lcolor/support/v7/widget/SearchView$SearchAutoComplete$1;

    invoke-direct {p1, p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete$1;-><init>(Lcolor/support/v7/widget/SearchView$SearchAutoComplete;)V

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 1824
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method

.method static synthetic access$500(Lcolor/support/v7/widget/SearchView$SearchAutoComplete;)Z
    .locals 0

    .line 1803
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private isEmpty()Z
    .locals 1

    .line 1860
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .line 1955
    iget v0, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1910
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 1911
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1913
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1920
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1921
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->onTextFocusChanged()V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1987
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1989
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1993
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Lcolor/support/v7/widget/SearchView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    :cond_0
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1887
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 1889
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1892
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 1902
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcolor/support/v7/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    sget-object v0, Lcolor/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-virtual {v0, p0, p1}, Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method setImeVisibility(Z)V
    .locals 2

    .line 1927
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1929
    iput-boolean v1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 1930
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1931
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 1935
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1938
    iput-boolean v1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 1939
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1940
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 1946
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    return-void
.end method

.method setSearchView(Lcolor/support/v7/widget/SearchView;)V
    .locals 0

    .line 1828
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Lcolor/support/v7/widget/SearchView;

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .line 1852
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setThreshold(I)V

    .line 1853
    iput p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method

.method showSoftInputIfNecessary()V
    .locals 2

    .line 1841
    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_0

    .line 1843
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 1844
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1845
    iput-boolean v1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    :cond_0
    return-void
.end method
