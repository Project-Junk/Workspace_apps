.class public final synthetic Lcom/android/settings/notification/-$$Lambda$q$m8mc9gjMpLxtCznt_uNl6s75guM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/q;

.field private final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/q;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$q$m8mc9gjMpLxtCznt_uNl6s75guM;->f$0:Lcom/android/settings/notification/q;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$q$m8mc9gjMpLxtCznt_uNl6s75guM;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$q$m8mc9gjMpLxtCznt_uNl6s75guM;->f$0:Lcom/android/settings/notification/q;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$q$m8mc9gjMpLxtCznt_uNl6s75guM;->f$1:Landroidx/preference/Preference;

    invoke-static {v0, v1}, Lcom/android/settings/notification/q;->lambda$m8mc9gjMpLxtCznt_uNl6s75guM(Lcom/android/settings/notification/q;Landroidx/preference/Preference;)V

    return-void
.end method
