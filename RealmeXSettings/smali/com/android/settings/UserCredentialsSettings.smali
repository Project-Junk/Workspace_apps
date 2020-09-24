.class public Lcom/android/settings/UserCredentialsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$b;,
        Lcom/android/settings/UserCredentialsSettings$d;,
        Lcom/android/settings/UserCredentialsSettings$c;,
        Lcom/android/settings/UserCredentialsSettings$a;,
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/UserCredentialsSettings$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 400
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 402
    sput-object v0, Lcom/android/settings/UserCredentialsSettings;->a:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$b$a;->c:Lcom/android/settings/UserCredentialsSettings$b$a;

    const v2, 0x7f0a019f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->a:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$b$a;->b:Lcom/android/settings/UserCredentialsSettings$b$a;

    const v2, 0x7f0a019e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->a:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$b$a;->a:Lcom/android/settings/UserCredentialsSettings$b$a;

    const v2, 0x7f0a019c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method protected static a(Lcom/android/settings/UserCredentialsSettings$b;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 410
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p1, 0x7f0a0078

    .line 413
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/settings/UserCredentialsSettings$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0535

    .line 414
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$b;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f120645

    goto :goto_0

    :cond_1
    const p3, 0x7f120646

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a019b

    .line 418
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    if-eqz p4, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_4

    move p1, v0

    .line 420
    :goto_2
    sget-object p4, Lcom/android/settings/UserCredentialsSettings;->a:Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p1, p4, :cond_4

    .line 421
    sget-object p4, Lcom/android/settings/UserCredentialsSettings;->a:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 422
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$b;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/settings/UserCredentialsSettings;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, p3

    :goto_3
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-object p2
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UserCredentialsSettings$a;-><init>(Lcom/android/settings/UserCredentialsSettings;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11d

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/UserCredentialsSettings$b;

    if-eqz p1, :cond_0

    .line 84
    invoke-static {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->a(Landroidx/fragment/app/Fragment;Lcom/android/settings/UserCredentialsSettings$b;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12180a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->a()V

    return-void
.end method
