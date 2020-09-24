.class final Lcom/android/settings/location/d$b$1;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/d$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/location/d$b;


# direct methods
.method constructor <init>(Lcom/android/settings/location/d$b;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/location/d$b$1;->a:Lcom/android/settings/location/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 175
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "userConsentNotify"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    aget-object p2, p3, p1

    if-eqz p2, :cond_2

    aget-object p2, p3, p1

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 177
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 178
    iget-object p3, p0, Lcom/android/settings/location/d$b$1;->a:Lcom/android/settings/location/d$b;

    invoke-static {p3}, Lcom/android/settings/location/d$b;->a(Lcom/android/settings/location/d$b;)Z

    move-result p3

    if-eq p3, p2, :cond_2

    .line 179
    iget-object p3, p0, Lcom/android/settings/location/d$b$1;->a:Lcom/android/settings/location/d$b;

    invoke-static {p3, p2}, Lcom/android/settings/location/d$b;->a(Lcom/android/settings/location/d$b;Z)Z

    .line 180
    iget-object p2, p0, Lcom/android/settings/location/d$b$1;->a:Lcom/android/settings/location/d$b;

    invoke-virtual {p2}, Lcom/android/settings/location/d$b;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/location/d$b$1;->a:Lcom/android/settings/location/d$b;

    invoke-static {p3}, Lcom/android/settings/location/d$b;->a(Lcom/android/settings/location/d$b;)Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    invoke-static {p2, p1}, Lcom/android/settings/location/d;->a(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
