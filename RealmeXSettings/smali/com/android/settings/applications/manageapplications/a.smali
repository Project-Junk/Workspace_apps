.class public final Lcom/android/settings/applications/manageapplications/a;
.super Ljava/lang/Object;
.source "AppFilterItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/applications/manageapplications/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field final b:I

.field final c:Lcom/coloros/settingslib/applications/ApplicationsState$b;


# direct methods
.method public constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;II)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p3, p0, Lcom/android/settings/applications/manageapplications/a;->a:I

    .line 40
    iput p2, p0, Lcom/android/settings/applications/manageapplications/a;->b:I

    .line 41
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/a;->c:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 28
    check-cast p1, Lcom/android/settings/applications/manageapplications/a;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1064
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/manageapplications/a;->b:I

    iget p1, p1, Lcom/android/settings/applications/manageapplications/a;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 69
    instance-of v1, p1, Lcom/android/settings/applications/manageapplications/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 75
    :cond_1
    check-cast p1, Lcom/android/settings/applications/manageapplications/a;

    .line 76
    iget v2, p0, Lcom/android/settings/applications/manageapplications/a;->a:I

    iget v3, p1, Lcom/android/settings/applications/manageapplications/a;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/applications/manageapplications/a;->b:I

    iget v3, p1, Lcom/android/settings/applications/manageapplications/a;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/a;->c:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/a;->c:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/a;->c:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
