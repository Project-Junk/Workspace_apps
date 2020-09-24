.class public final Lcom/android/settings/network/telephony/f;
.super Ljava/lang/Object;
.source "SignalStrengthListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/network/telephony/f$a;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/f$a;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/f;->c:Landroid/telephony/TelephonyManager;

    .line 45
    iput-object p2, p0, Lcom/android/settings/network/telephony/f;->a:Lcom/android/settings/network/telephony/f$a;

    .line 46
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/f;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/network/telephony/f;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/settings/network/telephony/f;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/settings/network/telephony/f;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 68
    invoke-static {v0, p1}, Lcom/google/a/b/f;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/a/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/b/f$a;->a()Lcom/google/a/b/g;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/f;->b(I)V

    .line 70
    iget-object v3, p0, Lcom/android/settings/network/telephony/f;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p1, v0}, Lcom/google/a/b/f;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/a/b/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/a/b/f$a;->a()Lcom/google/a/b/g;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    new-instance v1, Lcom/android/settings/network/telephony/f$1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/f$1;-><init>(Lcom/android/settings/network/telephony/f;)V

    .line 79
    iget-object v2, p0, Lcom/android/settings/network/telephony/f;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/f;->a(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settings/network/telephony/f;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/settings/network/telephony/f;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
