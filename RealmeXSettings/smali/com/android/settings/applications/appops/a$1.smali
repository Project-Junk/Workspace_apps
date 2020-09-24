.class final Lcom/android/settings/applications/appops/a$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/appops/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/a$1;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 437
    check-cast p1, Lcom/android/settings/applications/appops/a$b;

    check-cast p2, Lcom/android/settings/applications/appops/a$b;

    .line 2357
    iget v0, p1, Lcom/android/settings/applications/appops/a$b;->c:I

    .line 3357
    iget v1, p2, Lcom/android/settings/applications/appops/a$b;->c:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 4357
    iget p1, p1, Lcom/android/settings/applications/appops/a$b;->c:I

    .line 5357
    iget p2, p2, Lcom/android/settings/applications/appops/a$b;->c:I

    if-ge p1, p2, :cond_0

    return v2

    :cond_0
    return v3

    .line 1444
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/a$b;->a()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/a$b;->a()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1446
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/a$b;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v3

    .line 1448
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/a$b;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/a$b;->b()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 1450
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/a$b;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/a$b;->b()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-lez p1, :cond_4

    return v2

    :cond_4
    return v3

    .line 1452
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$1;->a:Ljava/text/Collator;

    .line 6353
    iget-object p1, p1, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 7258
    iget-object p1, p1, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    .line 7353
    iget-object p2, p2, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 8258
    iget-object p2, p2, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    .line 1452
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
