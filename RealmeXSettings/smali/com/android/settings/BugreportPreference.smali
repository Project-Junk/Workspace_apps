.class public Lcom/android/settings/BugreportPreference;
.super Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.source "BugreportPreference.java"


# instance fields
.field private a:Landroid/widget/CheckedTextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/CheckedTextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->c:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method private static a(I)V
    .locals 3

    .line 103
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error taking bugreport (bugreportType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BugreportPreference"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic b(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->a:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->b:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 52
    invoke-super {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/BugreportPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0055

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00fc

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->a:Landroid/widget/CheckedTextView;

    const v1, 0x7f0a00fb

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->b:Landroid/widget/TextView;

    const v1, 0x7f0a00fa

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->c:Landroid/widget/CheckedTextView;

    const v1, 0x7f0a00f9

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->d:Landroid/widget/TextView;

    .line 59
    new-instance v1, Lcom/android/settings/BugreportPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/BugreportPreference$1;-><init>(Lcom/android/settings/BugreportPreference;)V

    .line 73
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->a:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/BugreportPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.internal.R.string.report"

    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/BugreportPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/android/settings/BugreportPreference;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    const-string v0, "BugreportPreference"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string p2, "Taking full bugreport right away"

    .line 88
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p2

    const/16 v0, 0x127

    new-array v2, v1, [Landroid/util/Pair;

    invoke-virtual {p2, p1, v0, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 91
    invoke-static {v1}, Lcom/android/settings/BugreportPreference;->a(I)V

    return-void

    :cond_0
    const-string p2, "Taking interactive bugreport right away"

    .line 93
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p2

    const/16 v0, 0x126

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p1, 0x1

    .line 96
    invoke-static {p1}, Lcom/android/settings/BugreportPreference;->a(I)V

    :cond_1
    return-void
.end method
