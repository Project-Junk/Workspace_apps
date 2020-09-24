.class public final Lcom/android/settings/TrustedCredentialsSettings$c;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/TrustedCredentialsSettings$c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/android/settings/TrustedCredentialsSettings$f;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Z

.field private final g:Landroid/security/IKeyChainService;

.field private final h:Lcom/android/settings/TrustedCredentialsSettings$e;

.field private final i:Ljava/security/cert/X509Certificate;

.field private final j:Landroid/net/http/SslCertificate;


# direct methods
.method private constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$e;Lcom/android/settings/TrustedCredentialsSettings$f;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V
    .locals 0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 874
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->g:Landroid/security/IKeyChainService;

    .line 875
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    .line 876
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    .line 877
    iput-object p4, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    .line 878
    iput-object p5, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->i:Ljava/security/cert/X509Certificate;

    .line 880
    new-instance p1, Landroid/net/http/SslCertificate;

    invoke-direct {p1, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->j:Landroid/net/http/SslCertificate;

    .line 882
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->j:Landroid/net/http/SslCertificate;

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object p1

    .line 883
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->j:Landroid/net/http/SslCertificate;

    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object p2

    .line 884
    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->j:Landroid/net/http/SslCertificate;

    invoke-virtual {p3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object p3

    .line 888
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 889
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 890
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    .line 891
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    goto :goto_0

    .line 893
    :cond_0
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    .line 894
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    goto :goto_0

    .line 897
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const-string p3, ""

    if-nez p2, :cond_2

    .line 898
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    .line 899
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    goto :goto_0

    .line 901
    :cond_2
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->j:Landroid/net/http/SslCertificate;

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    .line 902
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    .line 906
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->g:Landroid/security/IKeyChainService;

    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/android/settings/TrustedCredentialsSettings$f;->a(Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 908
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Remote exception while checking if alias "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is deleted."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TrustedCredentialsSettings"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 910
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$e;Lcom/android/settings/TrustedCredentialsSettings$f;Ljava/lang/String;Ljava/security/cert/X509Certificate;IB)V
    .locals 0

    .line 854
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/TrustedCredentialsSettings$c;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$e;Lcom/android/settings/TrustedCredentialsSettings$f;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/lang/String;
    .locals 0

    .line 854
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 854
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->i:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/TrustedCredentialsSettings$c;)Lcom/android/settings/TrustedCredentialsSettings$e;
    .locals 0

    .line 854
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->h:Lcom/android/settings/TrustedCredentialsSettings$e;

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$f;->a:Lcom/android/settings/TrustedCredentialsSettings$f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 854
    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$c;

    .line 1914
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 921
    instance-of v0, p1, Lcom/android/settings/TrustedCredentialsSettings$c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 924
    :cond_0
    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$c;

    .line 925
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
