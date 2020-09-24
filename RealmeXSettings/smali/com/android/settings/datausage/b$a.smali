.class public final Lcom/android/settings/datausage/b$a;
.super Ljava/lang/Object;
.source "CycleAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/datausage/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/m;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/b$a;->a:Ljava/lang/CharSequence;

    .line 197
    iput-wide p2, p0, Lcom/android/settings/datausage/b$a;->b:J

    .line 198
    iput-wide p4, p0, Lcom/android/settings/datausage/b$a;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/datausage/b$a;)I
    .locals 4

    .line 217
    iget-wide v0, p0, Lcom/android/settings/datausage/b$a;->b:J

    iget-wide v2, p1, Lcom/android/settings/datausage/b$a;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 186
    check-cast p1, Lcom/android/settings/datausage/b$a;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/b$a;->a(Lcom/android/settings/datausage/b$a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 208
    instance-of v0, p1, Lcom/android/settings/datausage/b$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Lcom/android/settings/datausage/b$a;

    .line 210
    iget-wide v2, p0, Lcom/android/settings/datausage/b$a;->b:J

    iget-wide v4, p1, Lcom/android/settings/datausage/b$a;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/android/settings/datausage/b$a;->c:J

    iget-wide v4, p1, Lcom/android/settings/datausage/b$a;->c:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/settings/datausage/b$a;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
