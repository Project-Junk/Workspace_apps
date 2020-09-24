.class final Lcom/android/settings/l;
.super Lcolor/support/v7/app/AlertDialog$Builder;
.source "TrustedCredentialsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/l$b;,
        Lcom/android/settings/l$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/l$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/l$a;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings/l$b;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/l$b;-><init>(Landroid/app/Activity;Lcom/android/settings/l$a;)V

    iput-object v0, p0, Lcom/android/settings/l;->a:Lcom/android/settings/l$b;

    const-string p1, "com.android.internal.R.string.ssl_certificate"

    .line 1089
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 1090
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/l;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1094
    :cond_0
    iget-object p1, p0, Lcom/android/settings/l;->a:Lcom/android/settings/l$b;

    invoke-static {p1}, Lcom/android/settings/l$b;->a(Lcom/android/settings/l$b;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/l;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f121721

    const/4 p2, 0x0

    .line 1097
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/l;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/l;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final a([Lcom/android/settings/TrustedCredentialsSettings$c;)Lcom/android/settings/l;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/l;->a:Lcom/android/settings/l$b;

    .line 1135
    iput-object p1, v0, Lcom/android/settings/l$b;->b:[Lcom/android/settings/TrustedCredentialsSettings$c;

    return-object p0
.end method

.method public final bridge synthetic create()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/l;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final create()Lcolor/support/v7/app/AlertDialog;
    .locals 2

    .line 79
    invoke-super {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/settings/l;->a:Lcom/android/settings/l$b;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/l;->a:Lcom/android/settings/l$b;

    .line 2131
    iput-object v0, v1, Lcom/android/settings/l$b;->a:Lcolor/support/v7/app/AlertDialog;

    return-object v0
.end method
