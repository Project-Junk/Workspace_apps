.class public final Lcom/android/settings/notification/ZenModeEventRuleSettings$a;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeEventRuleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 268
    instance-of v0, p1, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 270
    :cond_1
    check-cast p1, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;

    .line 271
    iget-object v2, p1, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->c:Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->c:Ljava/lang/Long;

    .line 272
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 277
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->c:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
