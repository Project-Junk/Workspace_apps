.class public Lcom/android/settings/widget/ImeAwareEditText;
.super Landroid/widget/EditText;
.source "ImeAwareEditText.java"


# instance fields
.field final a:Ljava/lang/Runnable;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$9OxDHMB56Fc5V3y8v8rA7zYfvL0;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$9OxDHMB56Fc5V3y8v8rA7zYfvL0;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object p1, p0, Lcom/android/settings/widget/ImeAwareEditText;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$9OxDHMB56Fc5V3y8v8rA7zYfvL0;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$9OxDHMB56Fc5V3y8v8rA7zYfvL0;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object p1, p0, Lcom/android/settings/widget/ImeAwareEditText;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$9OxDHMB56Fc5V3y8v8rA7zYfvL0;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$9OxDHMB56Fc5V3y8v8rA7zYfvL0;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object p1, p0, Lcom/android/settings/widget/ImeAwareEditText;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$9OxDHMB56Fc5V3y8v8rA7zYfvL0;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$9OxDHMB56Fc5V3y8v8rA7zYfvL0;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object p1, p0, Lcom/android/settings/widget/ImeAwareEditText;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 1069
    iget-boolean v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->b:Z

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 1072
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1073
    iput-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->b:Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$9OxDHMB56Fc5V3y8v8rA7zYfvL0(Lcom/android/settings/widget/ImeAwareEditText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/ImeAwareEditText;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 79
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->b:Z

    .line 83
    iget-object v2, p0, Lcom/android/settings/widget/ImeAwareEditText;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 84
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->b:Z

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->b:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    iget-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method
