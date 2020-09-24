.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$DsfREWgmHZE_4IAwlrtaE6UVMD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

.field private final synthetic f$1:Lcom/android/settingslib/d/a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/d/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$DsfREWgmHZE_4IAwlrtaE6UVMD8;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$DsfREWgmHZE_4IAwlrtaE6UVMD8;->f$1:Lcom/android/settingslib/d/a;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$DsfREWgmHZE_4IAwlrtaE6UVMD8;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$DsfREWgmHZE_4IAwlrtaE6UVMD8;->f$1:Lcom/android/settingslib/d/a;

    invoke-static {v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->lambda$DsfREWgmHZE_4IAwlrtaE6UVMD8(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/d/a;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
