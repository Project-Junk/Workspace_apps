.class public Lcom/coloros/settings/ringtone/f;
.super Ljava/lang/Object;
.source "RingtoneItem.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/net/Uri;

.field final c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const-string v0, ""

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/ringtone/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/coloros/settings/ringtone/f;->a:Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/coloros/settings/utils/at;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/f;->b:Landroid/net/Uri;

    .line 31
    iput-object p3, p0, Lcom/coloros/settings/ringtone/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/coloros/settings/ringtone/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 65
    check-cast p1, Lcom/coloros/settings/ringtone/f;

    .line 66
    iget-object v1, p0, Lcom/coloros/settings/ringtone/f;->b:Landroid/net/Uri;

    iget-object p1, p1, Lcom/coloros/settings/ringtone/f;->b:Landroid/net/Uri;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/ringtone/f;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x11

    return v0

    .line 80
    :cond_0
    const-class v0, Lcom/coloros/settings/ringtone/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
