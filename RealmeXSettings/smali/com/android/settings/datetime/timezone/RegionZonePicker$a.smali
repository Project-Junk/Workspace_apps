.class final Lcom/android/settings/datetime/timezone/RegionZonePicker$a;
.super Ljava/lang/Object;
.source "RegionZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/datetime/timezone/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/icu/text/Collator;

.field private final b:Ljava/util/Date;


# direct methods
.method constructor <init>(Landroid/icu/text/Collator;Ljava/util/Date;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$a;->a:Landroid/icu/text/Collator;

    .line 142
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$a;->b:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 134
    check-cast p1, Lcom/android/settings/datetime/timezone/c;

    check-cast p2, Lcom/android/settings/datetime/timezone/c;

    .line 2056
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    .line 1147
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$a;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 3056
    iget-object v1, p2, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    .line 1148
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$a;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 1147
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 4056
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    .line 1150
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 5056
    iget-object v1, p2, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    .line 1151
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 1150
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$a;->a:Landroid/icu/text/Collator;

    .line 5060
    iget-object v1, p1, Lcom/android/settings/datetime/timezone/c;->f:Ljava/lang/String;

    .line 6060
    iget-object v2, p2, Lcom/android/settings/datetime/timezone/c;->f:Ljava/lang/String;

    .line 1154
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 6064
    iget-object v1, p1, Lcom/android/settings/datetime/timezone/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7064
    iget-object v1, p2, Lcom/android/settings/datetime/timezone/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$a;->a:Landroid/icu/text/Collator;

    .line 8064
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/c;->c:Ljava/lang/String;

    .line 9064
    iget-object p2, p2, Lcom/android/settings/datetime/timezone/c;->c:Ljava/lang/String;

    .line 1157
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method
