.class public final Lcom/android/settings/accounts/c;
.super Ljava/lang/Object;
.source "AccountRestrictionHelper.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/accounts/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settings/AccessiblePreferenceCategory;
    .locals 1

    .line 59
    new-instance v0, Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a([Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 72
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 73
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/accounts/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    .line 49
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/settings/accounts/c;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
