.class public Lcom/coloros/settings/feature/print/PrinterInfoPreference;
.super Landroidx/preference/Preference;
.source "PrinterInfoPreference.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/print/PrinterInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/PrinterInfo;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d022b

    .line 33
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->setLayoutResource(I)V

    .line 34
    iput-object p2, p0, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->c:Landroid/print/PrinterInfo;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const v0, 0x7f0a0445

    .line 39
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->a:Landroid/widget/TextView;

    const v0, 0x7f0a033d

    .line 40
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->b:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->c:Landroid/print/PrinterInfo;

    invoke-virtual {v1}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->c:Landroid/print/PrinterInfo;

    invoke-virtual {v1}, Landroid/print/PrinterInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
