.class final Lcom/android/settings/location/d$a$1;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/d$a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/location/d$a;


# direct methods
.method constructor <init>(Lcom/android/settings/location/d$a;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/location/d$a$1;->a:Lcom/android/settings/location/d$a;

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

    .line 138
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

    .line 140
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 141
    iget-object p3, p0, Lcom/android/settings/location/d$a$1;->a:Lcom/android/settings/location/d$a;

    invoke-static {p3}, Lcom/android/settings/location/d$a;->a(Lcom/android/settings/location/d$a;)Z

    move-result p3

    if-eq p3, p2, :cond_2

    .line 142
    iget-object p3, p0, Lcom/android/settings/location/d$a$1;->a:Lcom/android/settings/location/d$a;

    invoke-static {p3, p2}, Lcom/android/settings/location/d$a;->a(Lcom/android/settings/location/d$a;Z)Z

    .line 143
    iget-object p2, p0, Lcom/android/settings/location/d$a$1;->a:Lcom/android/settings/location/d$a;

    invoke-virtual {p2}, Lcom/android/settings/location/d$a;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/location/d$a$1;->a:Lcom/android/settings/location/d$a;

    invoke-static {p3}, Lcom/android/settings/location/d$a;->a(Lcom/android/settings/location/d$a;)Z

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
