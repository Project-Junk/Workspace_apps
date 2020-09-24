.class final Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/HashMap<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 505
    instance-of p0, p0, Ljava/lang/Comparable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 476
    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Ljava/util/HashMap;

    .line 1488
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1489
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1495
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1496
    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1497
    :cond_1
    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 1501
    :cond_2
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
