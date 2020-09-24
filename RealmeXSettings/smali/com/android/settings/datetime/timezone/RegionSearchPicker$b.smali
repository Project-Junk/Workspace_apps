.class final Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;
.super Ljava/lang/Object;
.source "RegionSearchPicker.java"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->a:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->b:Ljava/lang/String;

    .line 136
    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->c:J

    const/4 p1, 0x2

    .line 140
    new-array p1, p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->a:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->b:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->c:J

    return-wide v0
.end method

.method public final e()[Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->d:[Ljava/lang/String;

    return-object v0
.end method
