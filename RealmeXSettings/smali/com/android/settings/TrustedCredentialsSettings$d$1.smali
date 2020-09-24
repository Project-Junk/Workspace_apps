.class final Lcom/android/settings/TrustedCredentialsSettings$d$1;
.super Landroid/database/DataSetObserver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/TrustedCredentialsSettings$d;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$d;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$d$1;->a:Lcom/android/settings/TrustedCredentialsSettings$d;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 565
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 566
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d$1;->a:Lcom/android/settings/TrustedCredentialsSettings$d;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$d;->a(Lcom/android/settings/TrustedCredentialsSettings$d;)V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 570
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 571
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$d$1;->a:Lcom/android/settings/TrustedCredentialsSettings$d;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$d;->b(Lcom/android/settings/TrustedCredentialsSettings$d;)V

    return-void
.end method
