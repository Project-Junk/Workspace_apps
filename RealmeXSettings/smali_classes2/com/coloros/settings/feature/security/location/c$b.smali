.class final Lcom/coloros/settings/feature/security/location/c$b;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/coloros/settings/feature/security/location/a;

.field public final b:Landroidx/preference/Preference;

.field public c:J

.field final synthetic d:Lcom/coloros/settings/feature/security/location/c;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/security/location/c;Lcom/coloros/settings/feature/security/location/a;Landroidx/preference/Preference;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c$b;->d:Lcom/coloros/settings/feature/security/location/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    .line 452
    iput-object p3, p0, Lcom/coloros/settings/feature/security/location/c$b;->b:Landroidx/preference/Preference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/security/location/c;Lcom/coloros/settings/feature/security/location/a;Landroidx/preference/Preference;B)V
    .locals 0

    .line 444
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/security/location/c$b;-><init>(Lcom/coloros/settings/feature/security/location/c;Lcom/coloros/settings/feature/security/location/a;Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 525
    iget-wide v2, p0, Lcom/coloros/settings/feature/security/location/c$b;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 469
    instance-of v0, p1, Lcom/coloros/settings/feature/security/location/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    check-cast p1, Lcom/coloros/settings/feature/security/location/c$b;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/security/location/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/location/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting{setting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/c$b;->b:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
