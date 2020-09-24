.class public Lcom/android/systemui/plugins/qs/QSTile$ColorState;
.super Lcom/android/systemui/plugins/qs/QSTile$State;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public doAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->doAnim:Z

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 322
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$ColorState;-><init>()V

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 2

    .line 304
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;

    .line 305
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-ne p1, v1, :cond_1

    iget-boolean p1, v0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->doAnim:Z

    iget-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->doAnim:Z

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 307
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 308
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->doAnim:Z

    iput-boolean p0, v0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->doAnim:Z

    return p1
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 314
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",animIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",doAnim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$ColorState;->doAnim:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
