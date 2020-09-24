.class public final enum Lcom/android/settings/TrustedCredentialsSettings$f;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/TrustedCredentialsSettings$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/settings/TrustedCredentialsSettings$f;

.field public static final enum b:Lcom/android/settings/TrustedCredentialsSettings$f;

.field private static final synthetic j:[Lcom/android/settings/TrustedCredentialsSettings$f;


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 104
    new-instance v10, Lcom/android/settings/TrustedCredentialsSettings$f;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    const-string/jumbo v3, "system"

    const v4, 0x7f121720

    const v5, 0x7f0a06c8

    const v6, 0x7f0a06c7

    const v7, 0x7f0a06c5

    const v8, 0x7f0a06c3

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/TrustedCredentialsSettings$f;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v10, Lcom/android/settings/TrustedCredentialsSettings$f;->a:Lcom/android/settings/TrustedCredentialsSettings$f;

    .line 113
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$f;

    const-string v12, "USER"

    const/4 v13, 0x1

    const-string/jumbo v14, "user"

    const v15, 0x7f121722

    const v16, 0x7f0a0779

    const v17, 0x7f0a0778

    const v18, 0x7f0a0772

    const v19, 0x7f0a0769

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/android/settings/TrustedCredentialsSettings$f;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$f;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    const/4 v0, 0x2

    .line 103
    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$f;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$f;->a:Lcom/android/settings/TrustedCredentialsSettings$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$f;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$f;->j:[Lcom/android/settings/TrustedCredentialsSettings$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIIZ)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->g:Ljava/lang/String;

    .line 137
    iput p4, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->h:I

    .line 138
    iput p5, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->i:I

    .line 139
    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->c:I

    .line 140
    iput p8, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->d:I

    .line 141
    iput-boolean p9, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->e:Z

    .line 143
    iput p7, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->f:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$f;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1148
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$3;->a:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$f;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1153
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1155
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1150
    :cond_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1158
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$3;->a:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$f;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    return v0

    .line 1164
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1160
    :cond_1
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method static synthetic b(Lcom/android/settings/TrustedCredentialsSettings$f;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->i:I

    return p0
.end method

.method static synthetic c(Lcom/android/settings/TrustedCredentialsSettings$f;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$f;->h:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$f;
    .locals 1

    .line 103
    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/TrustedCredentialsSettings$f;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$f;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$f;->j:[Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-virtual {v0}, [Lcom/android/settings/TrustedCredentialsSettings$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/TrustedCredentialsSettings$f;

    return-object v0
.end method
