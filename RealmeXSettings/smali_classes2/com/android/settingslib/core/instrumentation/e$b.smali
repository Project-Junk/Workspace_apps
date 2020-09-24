.class public final Lcom/android/settingslib/core/instrumentation/e$b;
.super Ljava/lang/Object;
.source "SharedPreferencesLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/instrumentation/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/core/instrumentation/e;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/core/instrumentation/e;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/e$b;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 0

    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method

.method public final commit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/e$b;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/e;->b(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/e$b;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/e;->b(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/e$b;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/e;->b(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/e$b;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/e;->b(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/e$b;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/e;->a(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/e$b;->a:Lcom/android/settingslib/core/instrumentation/e;

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/e;->a(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method
