.class final Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController$a;
.super Ljava/lang/Object;
.source "ColorAppListController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 186
    check-cast p1, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;

    check-cast p2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1196
    :cond_0
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1199
    :cond_1
    iget-wide v0, p1, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a:J

    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_2

    return v1

    .line 1201
    :cond_2
    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a:J

    iget-wide v4, p2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 1202
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iget-object p2, p2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    if-le p1, p2, :cond_4

    return v1

    :cond_3
    :goto_0
    const-string p1, "SizeDescComparator"

    const-string p2, "sort error!!!"

    .line 1193
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p1, -0x1

    return p1
.end method
