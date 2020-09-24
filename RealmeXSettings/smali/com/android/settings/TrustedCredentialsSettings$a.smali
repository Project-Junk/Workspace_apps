.class public Lcom/android/settings/TrustedCredentialsSettings$a;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/android/settings/TrustedCredentialsSettings$f;

.field public final c:Lcom/android/settings/TrustedCredentialsSettings$e;

.field final synthetic d:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$f;Lcom/android/settings/TrustedCredentialsSettings$e;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    .line 691
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$a;->c:Lcom/android/settings/TrustedCredentialsSettings$e;

    .line 692
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    return-void
.end method
