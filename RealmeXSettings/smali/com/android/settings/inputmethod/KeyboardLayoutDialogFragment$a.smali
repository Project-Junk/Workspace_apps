.class final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;
.super Landroid/widget/ArrayAdapter;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.android.internal.R.layout.simple_list_item_2_single_choice"

    .line 236
    invoke-static {v0}, Lcom/coloros/settings/d/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->a:I

    const-string v0, "layout_inflater"

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 0

    .line 303
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 1

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b57

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    .line 256
    :goto_0
    iget v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v4

    .line 257
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const v5, 0x1020014

    if-eqz v2, :cond_4

    if-eqz p2, :cond_2

    .line 1267
    invoke-static {p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1268
    :cond_2
    iget-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->b:Landroid/view/LayoutInflater;

    const-string v0, "com.android.internal.R.layout.simple_list_item_single_choice"

    .line 1269
    invoke-static {v0}, Lcom/coloros/settings/d/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 1268
    invoke-virtual {p2, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1271
    invoke-static {p2, v4}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->a(Landroid/view/View;Z)V

    .line 1273
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 1274
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 1282
    invoke-static {p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1283
    :cond_5
    iget-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->b:Landroid/view/LayoutInflater;

    const-string v2, "com.android.internal.R.layout.simple_list_item_2_single_choice"

    .line 1284
    invoke-static {v2}, Lcom/coloros/settings/d/a;->a(Ljava/lang/String;)I

    move-result v2

    .line 1283
    invoke-virtual {p2, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1286
    invoke-static {p2, v3}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->a(Landroid/view/View;Z)V

    .line 1288
    :cond_6
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v2, 0x1020015

    .line 1289
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "com.android.internal.R.id.radio"

    .line 1291
    invoke-static {v3}, Lcom/coloros/settings/d/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 1292
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    invoke-virtual {v3, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object p2
.end method
