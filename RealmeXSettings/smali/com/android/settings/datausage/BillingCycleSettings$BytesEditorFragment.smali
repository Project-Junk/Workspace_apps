.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static a(F)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    .line 307
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    .line 308
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/settings/datausage/d;Z)V
    .locals 3

    .line 250
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 251
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 256
    invoke-interface {p0}, Lcom/android/settings/datausage/d;->d()Landroid/net/NetworkTemplate;

    move-result-object p0

    const-string/jumbo v2, "template"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "limit"

    .line 257
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    new-instance p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 261
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 262
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v0, "warningEditor"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x226

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/d;

    .line 317
    invoke-interface {p1}, Lcom/android/settings/datausage/d;->c()Lcom/android/settingslib/d;

    move-result-object p2

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 321
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a:Landroid/view/View;

    const v3, 0x7f0a0110

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 322
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a:Landroid/view/View;

    const v4, 0x7f0a0618

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 324
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v2, "0"

    .line 328
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 329
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_3

    const-wide/32 v3, 0x100000

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0x40000000

    :goto_0
    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    const-wide v4, 0x30d400000000L

    .line 332
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    if-eqz v1, :cond_4

    .line 334
    invoke-virtual {p2, v0, v2, v3}, Lcom/android/settingslib/d;->b(Landroid/net/NetworkTemplate;J)V

    goto :goto_1

    .line 336
    :cond_4
    invoke-virtual {p2, v0, v2, v3}, Lcom/android/settingslib/d;->a(Landroid/net/NetworkTemplate;J)V

    .line 338
    :goto_1
    invoke-interface {p1}, Lcom/android/settings/datausage/d;->e()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 268
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const v4, 0x7f0d013a

    const/4 v5, 0x0

    .line 270
    invoke-virtual {v0, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a:Landroid/view/View;

    const v4, 0x7f0a0110

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a:Landroid/view/View;

    const v5, 0x7f0a0618

    .line 272
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 1282
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/d;

    .line 1283
    invoke-interface {v5}, Lcom/android/settings/datausage/d;->c()Lcom/android/settingslib/d;

    move-result-object v5

    .line 1285
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "template"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 1286
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1287
    invoke-virtual {v5, v6}, Lcom/android/settingslib/d;->d(Landroid/net/NetworkTemplate;)J

    move-result-wide v5

    goto :goto_0

    .line 1288
    :cond_0
    invoke-virtual {v5, v6}, Lcom/android/settingslib/d;->c(Landroid/net/NetworkTemplate;)J

    move-result-wide v5

    :goto_0
    long-to-float v2, v5

    const/high16 v5, 0x4ec00000

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    const/high16 v5, 0x4e800000

    div-float/2addr v2, v5

    .line 1292
    invoke-static {v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a(F)Ljava/lang/String;

    move-result-object v2

    .line 1293
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setSelection(II)V

    const/4 v0, 0x1

    .line 1296
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_1
    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v2, v5

    .line 1298
    invoke-static {v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a(F)Ljava/lang/String;

    move-result-object v2

    .line 1299
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1302
    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 273
    :goto_1
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_2

    const p1, 0x7f1206dc

    goto :goto_2

    :cond_2
    const p1, 0x7f120709

    .line 274
    :goto_2
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->a:Landroid/view/View;

    .line 276
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1206c9

    .line 277
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
