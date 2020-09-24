.class final Lcom/android/settings/vpn2/b;
.super Ljava/lang/Object;
.source "AppVpnInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/settings/vpn2/b;->a:I

    .line 19
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/vpn2/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 24
    check-cast p1, Lcom/android/settings/vpn2/b;

    .line 26
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget p1, p1, Lcom/android/settings/vpn2/b;->a:I

    iget v0, p0, Lcom/android/settings/vpn2/b;->a:I

    sub-int v0, p1, v0

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 35
    instance-of v0, p1, Lcom/android/settings/vpn2/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/android/settings/vpn2/b;

    .line 37
    iget v0, p0, Lcom/android/settings/vpn2/b;->a:I

    iget v2, p1, Lcom/android/settings/vpn2/b;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/vpn2/b;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/vpn2/b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/vpn2/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
