.class final Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;
    }
.end annotation


# instance fields
.field a:[Lcom/android/settings/nfc/e$b;

.field final synthetic b:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController;Landroid/content/Context;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->b:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string p1, "layout_inflater"

    .line 184
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Lcom/android/settings/nfc/e$b;)V
    .locals 1

    .line 250
    iget-boolean v0, p1, Lcom/android/settings/nfc/e$b;->c:Z

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->b:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$100(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/e;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/nfc/e$b;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/android/settings/nfc/e;->a(Landroid/content/ComponentName;)V

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->b:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$200(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/NfcPaymentPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/nfc/NfcPaymentPreference;->c()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->a:[Lcom/android/settings/nfc/e$b;

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->a:[Lcom/android/settings/nfc/e$b;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->a:[Lcom/android/settings/nfc/e$b;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/settings/nfc/e$b;->d:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->a:[Lcom/android/settings/nfc/e$b;

    aget-object p1, v0, p1

    if-nez p2, :cond_0

    .line 214
    iget-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0d01eb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 216
    new-instance p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;

    invoke-direct {p3, p0, v1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;-><init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;B)V

    const v0, 0x7f0a00fd

    .line 217
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;->a:Landroid/widget/RadioButton;

    .line 218
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;

    .line 224
    :goto_0
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;->a:Landroid/widget/RadioButton;

    iget-boolean v1, p1, Lcom/android/settings/nfc/e$b;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 226
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;->a:Landroid/widget/RadioButton;

    iget-object v1, p1, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 229
    iget-object p3, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a$a;->a:Landroid/widget/RadioButton;

    iget-object p1, p1, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 239
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/e$b;

    .line 240
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->a(Lcom/android/settings/nfc/e$b;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/e$b;

    .line 246
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$a;->a(Lcom/android/settings/nfc/e$b;)V

    return-void
.end method
